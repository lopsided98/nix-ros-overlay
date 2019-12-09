
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, rosbag-storage, image-transport, tf2-msgs, kdl-parser, sensor-msgs, diagnostic-msgs, robot-state-publisher, naoqi-libqi, tf2-geometry-msgs, naoqi-libqicore, naoqi-bridge-msgs, rosconsole, tf2-ros, orocos-kdl, catkin, cv-bridge, rosgraph-msgs, boost, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-driver";
  version = "0.5.10";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_driver-release/archive/release/kinetic/naoqi_driver/0.5.10-0.tar.gz";
    name = "0.5.10-0.tar.gz";
    sha256 = "af80e7758de7895ce91aeb71a4f0cf72c678e8f28542a39db55ff83da32ea710";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs rosbag-storage image-transport tf2-msgs kdl-parser sensor-msgs diagnostic-msgs robot-state-publisher naoqi-libqi tf2-geometry-msgs naoqi-libqicore naoqi-bridge-msgs rosconsole tf2-ros orocos-kdl cv-bridge rosgraph-msgs boost diagnostic-updater ];
  propagatedBuildInputs = [ orocos-kdl boost robot-state-publisher rosbag-storage image-transport naoqi-libqi naoqi-libqicore cv-bridge naoqi-bridge-msgs rosconsole tf2-ros kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver module between Aldebaran's NAOqiOS and ROS. It publishes all sensor and actuator data as well as basic diagnostic for battery, temperature. It subscribes also to RVIZ simple goal and cmd_vel for teleop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
