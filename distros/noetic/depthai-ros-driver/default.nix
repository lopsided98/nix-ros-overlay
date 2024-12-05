
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-ros-msgs, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, pluginlib, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-driver";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_driver/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "62a0c36f2b59c6111aff1fbb3e96f6ae9754d96ff9e26f60f9b762a3db1ad811";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depthai depthai-bridge depthai-descriptions depthai-examples depthai-ros-msgs diagnostic-msgs diagnostic-updater dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet pluginlib roscpp rospy sensor-msgs std-msgs std-srvs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Depthai ROS Monolithic node.";
    license = with lib.licenses; [ mit ];
  };
}
