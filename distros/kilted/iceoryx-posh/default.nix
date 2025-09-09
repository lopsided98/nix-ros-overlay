
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-kilted-iceoryx-posh";
  version = "2.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/kilted/iceoryx_posh/2.0.5-6.tar.gz";
    name = "2.0.5-6.tar.gz";
    sha256 = "91263c1c18b13d31370abba3e98b87b9551a6054d7ebec20ea211fb45b5bb53a";
  };

  buildType = "cmake";
  buildInputs = [ cmake git ];
  propagatedBuildInputs = [ iceoryx-hoofs ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware Posix Shared Memory Library and middleware daemon (RouDi)";
    license = with lib.licenses; [ asl20 ];
  };
}
