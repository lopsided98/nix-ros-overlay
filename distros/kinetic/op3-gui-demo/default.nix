
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, eigen-conversions, geometry-msgs, humanoid-nav-msgs, interactive-markers, libyamlcpp, op3-navigation, op3-online-walking-module-msgs, op3-walking-module-msgs, qt-build, qt4, robotis-controller-msgs, roscpp, roslib, sensor-msgs, std-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-gui-demo";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_gui_demo/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "cd8b544daaa58d0475effd6dd9e477d972b3db7b19a2b5f5241f9fae1e06a440";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen eigen-conversions geometry-msgs humanoid-nav-msgs interactive-markers libyamlcpp op3-navigation op3-online-walking-module-msgs op3-walking-module-msgs qt-build qt4 robotis-controller-msgs roscpp roslib sensor-msgs std-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_gui_demo is a GUI software to control ROBOTIS-OP3. Within this program, user can perform module settings, walking tuner, head joint control and play actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
