
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-posh";
  version = "2.0.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_posh/2.0.5-5.tar.gz";
    name = "2.0.5-5.tar.gz";
    sha256 = "835e1bb27160e4bfc51dc6ff84f70b4d6324bc9e828a7a0840c42225a772024e";
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
