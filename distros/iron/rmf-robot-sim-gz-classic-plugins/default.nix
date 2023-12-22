
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, gazebo-dev, gazebo-ros, geometry-msgs, rclcpp, rmf-building-map-msgs, rmf-fleet-msgs, rmf-robot-sim-common }:
buildRosPackage {
  pname = "ros-iron-rmf-robot-sim-gz-classic-plugins";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_simulation-release/archive/release/iron/rmf_robot_sim_gz_classic_plugins/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "67528052ee3de699732deb3a8c9782900b92555316d593fc3030125efbfcf844";
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
