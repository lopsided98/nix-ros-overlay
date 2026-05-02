
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, rclcpp, rmf-building-map-msgs, rmf-building-sim-gz-plugins, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-rolling-rmf-robot-sim-gz-plugins";
  version = "2.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_robot_sim_gz_plugins/2.6.1-2.tar.gz";
    name = "2.6.1-2.tar.gz";
    sha256 = "7a54b98525bf0f84f316fcca9d682e38375e0f402d71aaa85ebd276221ae030c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen gz-msgs-vendor gz-plugin-vendor gz-rendering-vendor gz-sim-vendor gz-transport-vendor rclcpp rmf-building-map-msgs rmf-building-sim-gz-plugins rmf-dispenser-msgs rmf-fleet-msgs rmf-ingestor-msgs rmf-robot-sim-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 Gazebo plugins for TeleportIngestors and TeleportDispensers";
    license = with lib.licenses; [ asl20 ];
  };
}
