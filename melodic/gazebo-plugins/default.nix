
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, polled-camera, rosgraph-msgs, rospy, tf, gazebo-msgs, geometry-msgs, image-transport, message-generation, message-runtime, angles, std-srvs, camera-info-manager, trajectory-msgs, catkin, tf2-ros, gazebo-dev, nav-msgs, urdf, std-msgs, roscpp, nodelet, sensor-msgs, diagnostic-updater, rostest, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-melodic-gazebo-plugins";
  version = "2.8.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/melodic/gazebo_plugins/2.8.4-0.tar.gz";
    name = "2.8.4-0.tar.gz";
    sha256 = "94c5485bf4de9cbdb17df841f0ba08aa28e245dd533f88c78f3533b763622ca7";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole cv-bridge polled-camera rosgraph-msgs rospy tf gazebo-msgs geometry-msgs image-transport message-generation angles std-srvs camera-info-manager trajectory-msgs tf2-ros gazebo-dev nav-msgs urdf std-msgs roscpp nodelet sensor-msgs diagnostic-updater dynamic-reconfigure ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ rosconsole cv-bridge polled-camera rosgraph-msgs rospy tf gazebo-msgs geometry-msgs image-transport message-runtime angles std-srvs camera-info-manager trajectory-msgs tf2-ros gazebo-dev nav-msgs urdf std-msgs roscpp nodelet sensor-msgs diagnostic-updater dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot-independent Gazebo plugins for sensors, motors and dynamic reconfigurable components.'';
    license = with lib.licenses; [ bsd2 ];
  };
}
