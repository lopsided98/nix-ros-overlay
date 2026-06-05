
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-lyrical-sync-tooling-msgs";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/lyrical/sync_tooling_msgs/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "32018d3814cd849b07c4501e82f20b2d85b0b3ad20fa32c47cfc9063976c692e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ protobuf ];
  nativeBuildInputs = [ ament-cmake protobuf ];

  meta = {
    description = "Protobuf definitions for SYNC.TOOLING";
    license = with lib.licenses; [ asl20 ];
  };
}
