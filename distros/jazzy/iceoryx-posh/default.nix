
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-jazzy-iceoryx-posh";
  version = "2.0.5-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/jazzy/iceoryx_posh/2.0.5-6.tar.gz";
    name = "2.0.5-6.tar.gz";
    sha256 = "872d0b7b696e8c2693cf5d50868742c0daaba6b6687d49c95c2b8d73313ac37b";
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
