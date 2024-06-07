
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cargo, clang }:
buildRosPackage {
  pname = "ros-jazzy-zenoh-bridge-dds";
  version = "0.5.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zenoh_bridge_dds-release/archive/release/jazzy/zenoh_bridge_dds/0.5.0-5.tar.gz";
    name = "0.5.0-5.tar.gz";
    sha256 = "49c5864b9b9df168b159858b2b2c990b05d5293cb0bbb5d894b78f0c2c7045e7";
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
