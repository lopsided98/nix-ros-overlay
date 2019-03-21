
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, polled-camera, rosgraph-msgs, rospy, tf, gazebo-msgs, geometry-msgs, image-transport, message-generation, message-runtime, angles, std-srvs, camera-info-manager, trajectory-msgs, catkin, tf2-ros, gazebo-dev, nav-msgs, urdf, std-msgs, roscpp, nodelet, sensor-msgs, diagnostic-updater, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-plugins";
  version = "2.5.18-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_plugins/2.5.18-1.tar.gz;
    sha256 = "e5552128bf39a1db90a01d7163507a5557e58d8cf4e9fe70dc5f503aabe557d3";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs rosconsole camera-info-manager trajectory-msgs cv-bridge polled-camera tf2-ros gazebo-dev rosgraph-msgs nav-msgs urdf rospy std-msgs dynamic-reconfigure roscpp nodelet tf gazebo-msgs geometry-msgs image-transport sensor-msgs diagnostic-updater message-runtime angles ];
  nativeBuildInputs = [ std-srvs rosconsole camera-info-manager trajectory-msgs cv-bridge catkin polled-camera tf2-ros gazebo-dev rosgraph-msgs nav-msgs urdf rospy std-msgs dynamic-reconfigure roscpp nodelet tf gazebo-msgs geometry-msgs image-transport sensor-msgs diagnostic-updater message-generation angles ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    #license = lib.licenses.BSD, Apache 2.0;
  };
}
