module countergame_addr::counter {
    // use std::signer;

    // counter struct
    struct Counter has key, store{
        count: u64
    }

    // then we initialize the counter
    public fun init_counter(): Counter {
        Counter{count: 0}
    }

    // function to increment the click count
    public fun increment_count(counter: &mut Counter) {
        counter.count = counter.count + 1
    }

    // to get the count value
    public fun get_count(counter: &Counter): u64 {
        counter.count
    }
}

// module countergame_addr::counter {
//     use std::signer;

//     struct Counter has key {
//         count: u64
//     }

//     // initializing count value
//     public entry fun init_count(account: signer) 
//     acquires Counter
//     {
//         let signer_address = signer::address_of(&account);

//         if (!exists<Counter>(signer_address)) {
//             move_to(&account, Counter{count: 0})
//         } else {
//             let old_count = borrow_global_mut<Counter>(signer_address);
//             old_count.count = old_count.count + 1;
//         }
//     }

//     // function to get the count value
//     public fun get_count(address: address): u64 acquires Counter {
//         assert!(
//             exists<Counter>(address),
//             0
//         );

//         *&borrow_global<Counter>(address).count
//     }

// }