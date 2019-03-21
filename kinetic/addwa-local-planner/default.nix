
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, pluginlib, base-local-planner, cmake-modules, nav-core, catkin, roscpp, nav-msgs, eigen, dynamic-reconfigure, tf, pcl-conversions }:
buildRosPackage {
  pname = "ros-kinetic-addwa-local-planner";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/addwa_local_planner/0.0.12-0.tar.gz;
    sha256 = "7acaa3894129b79d41e35dd91729d144609a2ea855fec3c2ddedff35379a2a86";
  };

  propagatedBuildInputs = [ costmap-2d pluginlib base-local-planner nav-core roscpp nav-msgs dynamic-reconfigure tf eigen ];
  nativeBuildInputs = [ costmap-2d pluginlib cmake-modules base-local-planner nav-core catkin roscpp nav-msgs dynamic-reconfigure tf pcl-conversions eigen ];

  meta = {
    description = ''a modified version of dwa local planner'';
    #license = lib.licenses.MIT;
  };
}
