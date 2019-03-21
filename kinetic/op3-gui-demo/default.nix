
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-online-walking-module-msgs, op3-navigation, qt4, op3-walking-module-msgs, robotis-controller-msgs, geometry-msgs, boost, eigen-conversions, roslib, catkin, qt-build, std-msgs, roscpp, visualization-msgs, cmake-modules, libyamlcpp, sensor-msgs, interactive-markers, eigen, humanoid-nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-gui-demo";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_gui_demo/0.2.2-0.tar.gz;
    sha256 = "cd8b544daaa58d0475effd6dd9e477d972b3db7b19a2b5f5241f9fae1e06a440";
  };

  propagatedBuildInputs = [ op3-online-walking-module-msgs op3-navigation qt4 op3-walking-module-msgs qt-build std-msgs roscpp visualization-msgs robotis-controller-msgs geometry-msgs cmake-modules boost libyamlcpp sensor-msgs interactive-markers eigen eigen-conversions roslib humanoid-nav-msgs ];
  nativeBuildInputs = [ op3-online-walking-module-msgs qt4 catkin op3-walking-module-msgs qt-build std-msgs roscpp visualization-msgs robotis-controller-msgs geometry-msgs boost cmake-modules libyamlcpp sensor-msgs interactive-markers eigen eigen-conversions roslib humanoid-nav-msgs ];

  meta = {
    description = ''The op3_gui_demo is a GUI software to control ROBOTIS-OP3. Within this program, user can perform module settings, walking tuner, head joint control and play actions.'';
    #license = lib.licenses.Apache 2.0;
  };
}
