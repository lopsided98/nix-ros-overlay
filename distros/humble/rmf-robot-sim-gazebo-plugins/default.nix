
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, gazebo-dev, gazebo-ros, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-humble-rmf-robot-sim-gazebo-plugins";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/humble/rmf_robot_sim_gazebo_plugins/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "552dff1b1c4d09d7c1479a6b23b4e3f4b5f9b029d71b95d11e9ab99ac1db084a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen gazebo-dev gazebo-ros geometry-msgs rclcpp rmf-building-map-msgs rmf-fleet-msgs rmf-robot-sim-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 Gazebo plugins for TeleportIngestors, TeleportDispensers and Readonly Objects'';
    license = with lib.licenses; [ asl20 ];
  };
}
