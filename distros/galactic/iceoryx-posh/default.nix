
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-utils }:
buildRosPackage {
  pname = "ros-galactic-iceoryx-posh";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/galactic/iceoryx_posh/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "5ed2f4c96dd99f40f24bceb0fadcc5052791722d16b6811b309a12988d6ce492";
  };

  buildType = "cmake";
  buildInputs = [ cmake git iceoryx-utils ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware Posix Shared Memory Library and middleware daemon (RouDi)'';
    license = with lib.licenses; [ asl20 ];
  };
}
