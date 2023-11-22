module counter_game_addr::countergame {
    use std::signer;

    // counter struct
    struct Counter has key, store{
        count: u64
    }

    // then we initialize the counter
    public fun init_counter(): Counter {
        Counter{count: 0}
    }

    // function to increment the click count
    public fun increment_count(account: &signer) {
        let count = Counter {
            Counter.count: Counter.count + 1
        }
        // move the TodoList resource under the signer account
        move_to(account, count);
    }

    // to get the count value
    public fun get_count(counter: &Counter): u64 {
        counter.count
    }
}

// module counter_app::counter {

//   use aptos_framework::event;
//   use std::signer;
//   use aptos_std::table::{Self, Table};
//   use aptos_framework::account;

//   // Define Counter struct
//   struct Counter {
//     global_count: u64,
//     count_updated_event: event::EventHandle<u64>,
//   }

//   // Initialize Counter
//   public entry fun init_counter(account: &signer) {
//     let counter = Counter {
//       global_count: 0,
//       count_updated_event: account::new_event_handle<u64>(account),
//     };

//     move_to(account, counter);
//   }

//   // Increment Global Count
//   public entry fun increment_global_count(account: &signer) acquires Counter {
//     let mut counter = borrow_global_mut<Counter>(signer::address_of(account));
//     counter.global_count += 1;

//     event::emit_event<u64>(&mut counter.count_updated_event, counter.global_count);
//   }

//   // Get Global Count
//   public fun get_global_count(account: &signer): u64 {
//     borrow_global::<Counter>(signer::address_of(account)).global_count
//   }
// }





// module counter_game_addr::countergame {
//     // use std::signer;

//     // counter struct
//     struct Counter has key, store{
//         count: u64
//     }

//     // then we initialize the counter
//     public fun init_counter(): Counter {
//         Counter{count: 0}
//     }

//     // function to increment the click count
//     public entry fun increment_count(counter: &mut Counter) {
//         counter.count = counter.count + 1
//     }

//     // to get the count value
//     public fun get_count(counter: &Counter): u64 {
//         counter.count
//     }
// }
