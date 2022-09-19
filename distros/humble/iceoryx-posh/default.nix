
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-humble-iceoryx-posh";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/humble/iceoryx_posh/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "1325910bea9a03a885b33e489953eaae89098461b5d0114662c02ea7d582b146";
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
