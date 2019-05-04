
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt4, robotis-controller-msgs, thormang3-manipulation-module-msgs, geometry-msgs, thormang3-navigation, boost, eigen-conversions, roslib, thormang3-feet-ft-module-msgs, thormang3-action-script-player, catkin, thormang3-foot-step-generator, qt-build, std-msgs, roscpp, visualization-msgs, thormang3-walking-module-msgs, cmake-modules, libyamlcpp, sensor-msgs, interactive-markers, eigen, humanoid-nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-demo";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_demo/0.3.0-0.tar.gz;
    sha256 = "9f7f8a620e49890b715b1136f9a3b586a0cccc098ad088e14db56bb9aca75ef1";
  };

  buildInputs = [ qt4 robotis-controller-msgs thormang3-manipulation-module-msgs geometry-msgs boost eigen-conversions roslib thormang3-feet-ft-module-msgs thormang3-foot-step-generator qt-build std-msgs roscpp visualization-msgs thormang3-walking-module-msgs cmake-modules libyamlcpp sensor-msgs interactive-markers eigen humanoid-nav-msgs ];
  propagatedBuildInputs = [ qt4 robotis-controller-msgs thormang3-manipulation-module-msgs geometry-msgs thormang3-navigation boost eigen-conversions roslib thormang3-feet-ft-module-msgs thormang3-action-script-player thormang3-foot-step-generator qt-build std-msgs roscpp visualization-msgs thormang3-walking-module-msgs cmake-modules libyamlcpp sensor-msgs interactive-markers eigen humanoid-nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A GUI program for controlling a THORMANG3.
    Initial posture, walking, manipulation, head control are available with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
