
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, controller-interface, controller-manager, diff-drive-controller, gazebo-ros, geometry-msgs, hardware-interface, nav-msgs, pluginlib, realtime-tools, roscpp, rostest, rosunit, std-msgs, std-srvs, tf, urdf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-ackermann-steering-controller";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/ackermann_steering_controller/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "03372dc7475ef946eb4637c9c544d78dab13530ca0bd884c91b3698f6d06ba55";
  };

  buildType = "catkin";
  checkInputs = [ controller-manager gazebo-ros geometry-msgs rostest rosunit std-msgs std-srvs xacro ];
  propagatedBuildInputs = [ boost controller-interface diff-drive-controller hardware-interface nav-msgs pluginlib realtime-tools roscpp tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
