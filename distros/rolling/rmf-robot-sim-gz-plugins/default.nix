
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, gz-msgs-vendor, gz-plugin-vendor, gz-rendering-vendor, gz-sim-vendor, gz-transport-vendor, rclcpp, rmf-building-map-msgs, rmf-building-sim-gz-plugins, rmf-dispenser-msgs, rmf-fleet-msgs, rmf-ingestor-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-rolling-rmf-robot-sim-gz-plugins";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_robot_sim_gz_plugins/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "04f42110b4aa6cff50c714f424ea3d28e7ec3cbb604a53fa11a2e4f423563f7f";
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
