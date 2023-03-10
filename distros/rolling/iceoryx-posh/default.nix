
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-posh";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_posh/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "f37ba2ac6e148bcf98e8a4a9dd8127d8fb05d89c7ea098ffe3063f0b58e060e4";
  };

  buildType = "cmake";
  buildInputs = [ cmake git ];
  propagatedBuildInputs = [ iceoryx-hoofs ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = ''Eclipse iceoryx inter-process-communication (IPC) middleware Posix Shared Memory Library and middleware daemon (RouDi)'';
    license = with lib.licenses; [ asl20 ];
  };
}
