
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, diagnostic-msgs, diagnostic-updater, geometry-msgs, image-transport, kdl-parser, naoqi-bridge-msgs, naoqi-libqi, naoqi-libqicore, orocos-kdl, robot-state-publisher, rosbag-storage, rosconsole, rosgraph-msgs, sensor-msgs, tf2-geometry-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-naoqi-driver";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_driver-release/archive/release/noetic/naoqi_driver/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "6bedeacb7d8d14b6374d60b3876608067b67205f458403760b7b94e9bf84a938";
  };

  buildType = "catkin";
  buildInputs = [ catkin diagnostic-msgs diagnostic-updater geometry-msgs rosgraph-msgs sensor-msgs tf2-geometry-msgs tf2-msgs ];
  propagatedBuildInputs = [ boost cv-bridge image-transport kdl-parser naoqi-bridge-msgs naoqi-libqi naoqi-libqicore orocos-kdl robot-state-publisher rosbag-storage rosconsole tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver module between Aldebaran's NAOqiOS and ROS. It publishes all sensor and actuator data as well as basic diagnostic for battery, temperature. It subscribes also to RVIZ simple goal and cmd_vel for teleop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
