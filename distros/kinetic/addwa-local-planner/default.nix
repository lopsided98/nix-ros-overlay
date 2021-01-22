
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, cmake-modules, costmap-2d, dynamic-reconfigure, eigen, nav-core, nav-msgs, pcl-conversions, pluginlib, roscpp, tf }:
buildRosPackage {
  pname = "ros-kinetic-addwa-local-planner";
  version = "0.0.12";

  src = fetchurl {
    url = "https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/addwa_local_planner/0.0.12-0.tar.gz";
    name = "0.0.12-0.tar.gz";
    sha256 = "7acaa3894129b79d41e35dd91729d144609a2ea855fec3c2ddedff35379a2a86";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules pcl-conversions ];
  propagatedBuildInputs = [ base-local-planner costmap-2d dynamic-reconfigure eigen nav-core nav-msgs pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''a modified version of dwa local planner'';
    license = with lib.licenses; [ mit ];
  };
}
