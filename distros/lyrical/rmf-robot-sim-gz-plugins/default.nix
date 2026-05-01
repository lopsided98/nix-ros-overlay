
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, rclcpp, rmf-building-map-msgs, rmf-building-sim-gz-plugins, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-lyrical-rmf-robot-sim-gz-plugins";
  version = "2.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/lyrical/rmf_robot_sim_gz_plugins/2.6.1-3.tar.gz";
    name = "2.6.1-3.tar.gz";
    sha256 = "7fac3a65a297ad349973ec0657967054a07c116e5ec01a5d1348c43f35b06310";
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
