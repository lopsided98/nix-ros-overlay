
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, geometry-msgs, hardware-interface, boost, realtime-tools, xacro, gazebo-ros, std-srvs, catkin, nav-msgs, urdf, controller-interface, std-msgs, roscpp, controller-manager, pluginlib, diff-drive-controller, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-ackermann-steering-controller";
  version = "0.14.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ackermann_steering_controller/0.14.3-0.tar.gz;
    sha256 = "6725456d97d8720b60b8abf1588f25f0117857705c1add9f13a8efe668dda925";
  };

  checkInputs = [ gazebo-ros rostest controller-manager std-srvs std-msgs rosunit xacro geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface pluginlib boost realtime-tools diff-drive-controller roscpp nav-msgs urdf controller-interface tf ];
  nativeBuildInputs = [ hardware-interface pluginlib boost realtime-tools diff-drive-controller catkin roscpp nav-msgs urdf controller-interface tf ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    #license = lib.licenses.BSD;
  };
}
