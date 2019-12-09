
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, urdf, tf, image-transport, nodelet, nav-msgs, rostest, sensor-msgs, dynamic-reconfigure, message-runtime, camera-info-manager, rosconsole, tf2-ros, std-msgs, std-srvs, catkin, cv-bridge, roscpp, angles, message-generation, rospy, rosgraph-msgs, gazebo-dev, trajectory-msgs, gazebo-msgs, diagnostic-updater, polled-camera }:
buildRosPackage {
  pname = "ros-melodic-gazebo-plugins";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_plugins/2.8.4-0.tar.gz";
    name = "2.8.4-0.tar.gz";
    sha256 = "94c5485bf4de9cbdb17df841f0ba08aa28e245dd533f88c78f3533b763622ca7";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs urdf tf image-transport nodelet nav-msgs sensor-msgs dynamic-reconfigure camera-info-manager rosconsole tf2-ros std-msgs std-srvs cv-bridge roscpp angles rospy message-generation rosgraph-msgs gazebo-dev trajectory-msgs gazebo-msgs diagnostic-updater polled-camera ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometry-msgs urdf tf image-transport nodelet nav-msgs sensor-msgs dynamic-reconfigure camera-info-manager rosconsole tf2-ros polled-camera std-msgs std-srvs cv-bridge roscpp angles rospy rosgraph-msgs gazebo-dev trajectory-msgs gazebo-msgs diagnostic-updater message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
