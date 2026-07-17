
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-lyrical-sync-tooling-msgs";
  version = "0.2.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/lyrical/sync_tooling_msgs/0.2.11-1.tar.gz";
    name = "0.2.11-1.tar.gz";
    sha256 = "eb4d53a9330438efa27549608d82418b356b8b9808b1ec5a7f617cdaab51b98c";
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
