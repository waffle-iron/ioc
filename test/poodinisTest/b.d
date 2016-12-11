module poodinisTest.b;

import poodinisTest.a;
import ioc.testing;
import ioc.container;

class NotAComponent: I {
    void foo(){
        LogEntries.add("foo in NotAComponent");
    }
} 

@Component
class AComponent: I {
    void foo(){
        LogEntries.add("foo in AComponent");
    }
}

