
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, geometry-msgs, hardware-interface, boost, realtime-tools, xacro, gazebo-ros, std-srvs, catkin, nav-msgs, urdf, controller-interface, std-msgs, roscpp, controller-manager, pluginlib, diff-drive-controller, rostest, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-ackermann-steering-controller";
  version = "0.13.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/ackermann_steering_controller/0.13.5-0.tar.gz;
    sha256 = "2fcad6fb4a913c7ffcd316f9fc665c3d1e00838b892dad0dce0847e5e8c19dde";
  };

  buildInputs = [ hardware-interface pluginlib boost diff-drive-controller realtime-tools roscpp nav-msgs urdf controller-interface tf ];
  checkInputs = [ gazebo-ros controller-manager std-srvs rostest std-msgs rosunit xacro geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface pluginlib boost diff-drive-controller realtime-tools roscpp nav-msgs urdf controller-interface tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a steer drive mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
