
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, acl, cmake }:
buildRosPackage {
  pname = "ros-rolling-iceoryx-hoofs";
  version = "2.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/iceoryx-release/archive/release/rolling/iceoryx_hoofs/2.0.6-1.tar.gz";
    name = "2.0.6-1.tar.gz";
    sha256 = "a969d8185dea9f3e7b8e3b1b4af5f10f79d7f0ad1bc019df2aff78d1a815562e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ acl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eclipse iceoryx inter-process-communication (IPC) middleware basic building blocks";
    license = with lib.licenses; [ asl20 ];
  };
}
