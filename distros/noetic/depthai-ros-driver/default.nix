
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-ros-msgs, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, pluginlib, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-driver";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_driver/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "7d7eb95efcd00db467654964b0e9001bcc4bff8f0dfb7e553b92464dc1569a1e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depthai depthai-bridge depthai-descriptions depthai-examples depthai-ros-msgs diagnostic-msgs diagnostic-updater dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet pluginlib roscpp rospy sensor-msgs std-msgs std-srvs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Depthai ROS Monolithic node.'';
    license = with lib.licenses; [ mit ];
  };
}
