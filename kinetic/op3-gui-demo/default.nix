
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, op3-online-walking-module-msgs, op3-navigation, qt4, op3-walking-module-msgs, robotis-controller-msgs, geometry-msgs, boost, eigen-conversions, roslib, catkin, qt-build, std-msgs, visualization-msgs, roscpp, cmake-modules, libyamlcpp, sensor-msgs, interactive-markers, eigen, humanoid-nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-gui-demo";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_gui_demo/0.2.2-0.tar.gz;
    sha256 = "cd8b544daaa58d0475effd6dd9e477d972b3db7b19a2b5f5241f9fae1e06a440";
  };

  buildInputs = [ op3-online-walking-module-msgs boost cmake-modules qt4 libyamlcpp sensor-msgs op3-walking-module-msgs roscpp roslib interactive-markers visualization-msgs qt-build std-msgs eigen-conversions robotis-controller-msgs humanoid-nav-msgs geometry-msgs eigen ];
  propagatedBuildInputs = [ op3-online-walking-module-msgs op3-navigation qt4 op3-walking-module-msgs robotis-controller-msgs geometry-msgs boost eigen-conversions roslib qt-build std-msgs roscpp visualization-msgs cmake-modules libyamlcpp sensor-msgs interactive-markers eigen humanoid-nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_gui_demo is a GUI software to control ROBOTIS-OP3. Within this program, user can perform module settings, walking tuner, head joint control and play actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
