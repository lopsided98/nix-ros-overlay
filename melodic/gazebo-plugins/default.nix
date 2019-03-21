
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, polled-camera, rosgraph-msgs, rospy, tf, gazebo-msgs, geometry-msgs, image-transport, message-generation, message-runtime, angles, std-srvs, camera-info-manager, trajectory-msgs, catkin, tf2-ros, gazebo-dev, nav-msgs, urdf, std-msgs, roscpp, nodelet, sensor-msgs, diagnostic-updater, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-gazebo-plugins";
  version = "2.8.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_plugins/2.8.4-0.tar.gz;
    sha256 = "94c5485bf4de9cbdb17df841f0ba08aa28e245dd533f88c78f3533b763622ca7";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs rosconsole camera-info-manager trajectory-msgs cv-bridge polled-camera tf2-ros gazebo-dev rosgraph-msgs nav-msgs urdf rospy std-msgs dynamic-reconfigure roscpp nodelet tf gazebo-msgs geometry-msgs image-transport sensor-msgs diagnostic-updater message-runtime angles ];
  nativeBuildInputs = [ std-srvs rosconsole camera-info-manager trajectory-msgs cv-bridge catkin polled-camera tf2-ros gazebo-dev rosgraph-msgs nav-msgs urdf rospy std-msgs dynamic-reconfigure roscpp nodelet tf gazebo-msgs geometry-msgs image-transport sensor-msgs diagnostic-updater message-generation angles ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    #license = lib.licenses.BSD, Apache 2.0;
  };
}
