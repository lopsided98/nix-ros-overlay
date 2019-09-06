
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, rosconsole, cv-bridge, naoqi-bridge-msgs, rosgraph-msgs, diagnostic-msgs, geometry-msgs, boost, image-transport, robot-state-publisher, rosbag-storage, naoqi-libqicore, orocos-kdl, tf2-geometry-msgs, catkin, tf2-ros, naoqi-libqi, kdl-parser, sensor-msgs, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-naoqi-driver";
  version = "0.5.10";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/naoqi_driver-release/archive/release/kinetic/naoqi_driver/0.5.10-0.tar.gz";
    name = "0.5.10-0.tar.gz";
    sha256 = "af80e7758de7895ce91aeb71a4f0cf72c678e8f28542a39db55ff83da32ea710";
  };

  buildType = "catkin";
  buildInputs = [ tf2-msgs rosconsole cv-bridge naoqi-bridge-msgs rosgraph-msgs diagnostic-msgs geometry-msgs boost image-transport robot-state-publisher rosbag-storage naoqi-libqicore orocos-kdl tf2-geometry-msgs tf2-ros naoqi-libqi kdl-parser sensor-msgs diagnostic-updater ];
  propagatedBuildInputs = [ rosbag-storage naoqi-libqicore orocos-kdl rosconsole boost kdl-parser image-transport cv-bridge tf2-ros naoqi-bridge-msgs robot-state-publisher naoqi-libqi ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver module between Aldebaran's NAOqiOS and ROS. It publishes all sensor and actuator data as well as basic diagnostic for battery, temperature. It subscribes also to RVIZ simple goal and cmd_vel for teleop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
