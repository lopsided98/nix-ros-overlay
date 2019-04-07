
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, geometry-msgs, hardware-interface, boost, realtime-tools, xacro, gazebo-ros, std-srvs, catkin, nav-msgs, urdf, controller-interface, std-msgs, roscpp, controller-manager, pluginlib, diff-drive-controller, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-ackermann-steering-controller";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/ackermann_steering_controller/0.15.0-0.tar.gz;
    sha256 = "d6de33231e9dfdcb67a15c0c397f77d3e3e656823cabd02eb2464ba4a617b83a";
  };

  buildInputs = [ hardware-interface pluginlib boost realtime-tools diff-drive-controller roscpp nav-msgs urdf controller-interface tf ];
  checkInputs = [ gazebo-ros rostest controller-manager std-srvs std-msgs rosunit xacro geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface pluginlib boost realtime-tools diff-drive-controller roscpp nav-msgs urdf controller-interface tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    #license = lib.licenses.BSD;
  };
}
