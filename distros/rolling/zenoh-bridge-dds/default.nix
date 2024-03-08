
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cargo, clang }:
buildRosPackage {
  pname = "ros-rolling-zenoh-bridge-dds";
  version = "0.5.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zenoh_bridge_dds-release/archive/release/rolling/zenoh_bridge_dds/0.5.0-4.tar.gz";
    name = "0.5.0-4.tar.gz";
    sha256 = "6e915d2b7e15f7963e2ea80512c4a99195d83a4c2e06cc942db4fcb1570c5f8d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cargo clang ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Bridge between ROS2/DDS and Eclipse zenoh (https://zenoh.io). It allows the integration of zenoh applications with ROS2,
    or the tunneling of ROS2 communications between nodes via the zenoh protocol at Internet scale.'';
    license = with lib.licenses; [ "EPL-2.0" asl20 ];
  };
}
