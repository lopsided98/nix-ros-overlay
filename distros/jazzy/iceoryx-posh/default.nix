
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git, iceoryx-hoofs }:
buildRosPackage {
  pname = "ros-jazzy-iceoryx-posh";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/jazzy/iceoryx_posh/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "0a523fb8ff29a2766d4e57db8a76a8879648bc7486153dabb583efcb946e91fe";
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
