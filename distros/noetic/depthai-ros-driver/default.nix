
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, depthai, depthai-bridge, diagnostic-msgs, dynamic-reconfigure, image-pipeline, image-transport, image-transport-plugins, message-filters, nodelet, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, vision-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros-driver";
  version = "2.6.1-r2";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai_ros_driver/2.6.1-2.tar.gz";
    name = "2.6.1-2.tar.gz";
    sha256 = "5f3257fbf082d42976b606430208190b89337efc8baf70675cb95ea29d7e2f98";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge depthai depthai-bridge diagnostic-msgs dynamic-reconfigure image-pipeline image-transport image-transport-plugins message-filters nodelet roscpp rospy sensor-msgs std-msgs std-srvs vision-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Depthai ROS Monolithic node.'';
    license = with lib.licenses; [ mit ];
  };
}
