{ callPackage, ignition, ... } @ args :

callPackage ./. ({
  majorVersion = "8";
  version = "8.4.0";
  srcHash = "sha256-ca11gJkGzK8AiFQc+0F98968yrnvzS4lHjWYA/JF5g8=";
  ignition-msgs = ignition.msgs5;
} // args)
