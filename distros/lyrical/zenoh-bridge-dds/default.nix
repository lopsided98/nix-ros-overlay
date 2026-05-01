
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cargo, clang }:
buildRosPackage {
  pname = "ros-lyrical-zenoh-bridge-dds";
  version = "0.5.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zenoh_bridge_dds-release/archive/release/lyrical/zenoh_bridge_dds/0.5.0-6.tar.gz";
    name = "0.5.0-6.tar.gz";
    sha256 = "c68622aa96fd7a4aafbb73af29e8e5159b730a895cc169f4c9866e83e434909c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake cargo clang ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridge between ROS2/DDS and Eclipse zenoh (https://zenoh.io). It allows the integration of zenoh applications with ROS2,
    or the tunneling of ROS2 communications between nodes via the zenoh protocol at Internet scale.";
    license = with lib.licenses; [ "EPL-2.0" asl20 ];
  };
}
