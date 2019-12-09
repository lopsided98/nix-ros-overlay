
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, geometry-msgs, interactive-markers, eigen-conversions, qt4, op3-navigation, eigen, sensor-msgs, cmake-modules, roslib, op3-walking-module-msgs, libyamlcpp, std-msgs, catkin, roscpp, boost, qt-build, op3-online-walking-module-msgs, visualization-msgs, humanoid-nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-op3-gui-demo";
  version = "0.2.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_tools-release/archive/release/kinetic/op3_gui_demo/0.2.2-0.tar.gz";
    name = "0.2.2-0.tar.gz";
    sha256 = "cd8b544daaa58d0475effd6dd9e477d972b3db7b19a2b5f5241f9fae1e06a440";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost qt-build geometry-msgs sensor-msgs eigen-conversions op3-online-walking-module-msgs std-msgs qt4 interactive-markers cmake-modules roslib op3-walking-module-msgs libyamlcpp eigen visualization-msgs roscpp humanoid-nav-msgs ];
  propagatedBuildInputs = [ robotis-controller-msgs geometry-msgs eigen-conversions interactive-markers qt4 op3-navigation eigen sensor-msgs cmake-modules roslib libyamlcpp op3-walking-module-msgs std-msgs roscpp boost qt-build op3-online-walking-module-msgs visualization-msgs humanoid-nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The op3_gui_demo is a GUI software to control ROBOTIS-OP3. Within this program, user can perform module settings, walking tuner, head joint control and play actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
