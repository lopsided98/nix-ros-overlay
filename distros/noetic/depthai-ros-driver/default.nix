
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-ros-msgs, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, pluginlib, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-driver";
  version = "2.10.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_driver/2.10.1-1.tar.gz";
    name = "2.10.1-1.tar.gz";
    sha256 = "db32e6f04d9dfc823b71de67cd0c9973a7b70d0af9855fc5519db9296b674347";
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
