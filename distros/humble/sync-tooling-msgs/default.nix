
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, protobuf }:
buildRosPackage {
  pname = "ros-humble-sync-tooling-msgs";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sync_tooling_msgs-release/archive/release/humble/sync_tooling_msgs/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "ee38d0e39243aa9f00363dcba177a39d45515fa107538abd118561989e2d273d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ protobuf ];
  nativeBuildInputs = [ ament-cmake protobuf ];

  meta = {
    description = "Protobuf definitions for synchronization diagnostics";
    license = with lib.licenses; [ asl20 ];
  };
}
