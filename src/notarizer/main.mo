import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Trie "mo:base/Trie";

actor class Notarizer() = this {
  public type Notarization = {
    verifier: Text;
    verdict: Text;
    timestamp: Int;
    metadata: Text;
  };

  stable var store : Trie.Trie<Text, Notarization> = Trie.empty();

  func nowSecs() : Int {
    Int(Time.now() / 1000000)
  };

  // Validate basic inputs
  func validateHash(h: Text) : Bool {
    h != "" and (Text.size(h) <= 256)
  };

  public shared(msg) func notarize(hash: Text, verdict: Text, metadata: Text) : async Text {
    Debug.print("notarize called");
    if (!validateHash(hash)) {
      Debug.print("invalid hash");
      return "error: invalid hash";
    };
    // prevent overwrite - return existing if already notarized
    switch (Trie.get(hash, store)) {
      case (null) {
        let rec : Notarization = {
          verifier = "notarizer",
          verdict = verdict,
          timestamp = nowSecs(),
          metadata = metadata
        };
        store := Trie.put(hash, rec, store);
        Debug.print("stored record");
        return "ok";
      };
      case (?existing) {
        Debug.print("already exists");
        return "exists";
      };
    };
  };

  public query func get_record(hash: Text) : async ?Notarization {
    if (!validateHash(hash)) return null;
    return Trie.get(hash, store);
  };

  // list keys
  public query func list_hashes() : async [Text] {
    Trie.keys(store)
  };
};

