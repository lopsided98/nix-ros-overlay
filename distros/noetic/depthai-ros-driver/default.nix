
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-ros-msgs, diagnostic-msgs, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, pluginlib, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-driver";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_driver/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "ed7a3691475891139088b3b4244cc3e80e44ad5bc6b0c95dc6284b577cf97692";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depthai depthai-bridge depthai-descriptions depthai-examples depthai-ros-msgs diagnostic-msgs dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet pluginlib roscpp rospy sensor-msgs std-msgs std-srvs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Depthai ROS Monolithic node.'';
    license = with lib.licenses; [ mit ];
  };
}
