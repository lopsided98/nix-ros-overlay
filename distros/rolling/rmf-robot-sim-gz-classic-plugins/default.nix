
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, gazebo-dev, gazebo-ros, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-rolling-rmf-robot-sim-gz-classic-plugins";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/rolling/rmf_robot_sim_gz_classic_plugins/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "f3cccc7bcb22d35c7c93e6efc2ec3dd8221c9c99b44aaab97e3c041fc1f6a2ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen gazebo-dev gazebo-ros geometry-msgs rclcpp rmf-building-map-msgs rmf-fleet-msgs rmf-robot-sim-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 Gazebo-classic plugins for TeleportIngestors, TeleportDispensers and Readonly Objects'';
    license = with lib.licenses; [ asl20 ];
  };
}
