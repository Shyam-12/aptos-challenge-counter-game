module countergame_addr::countergame {
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