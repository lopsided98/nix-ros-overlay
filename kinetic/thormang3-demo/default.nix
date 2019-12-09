
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, geometry-msgs, interactive-markers, eigen-conversions, qt4, thormang3-walking-module-msgs, eigen, thormang3-foot-step-generator, thormang3-navigation, sensor-msgs, cmake-modules, roslib, thormang3-feet-ft-module-msgs, libyamlcpp, thormang3-manipulation-module-msgs, std-msgs, catkin, roscpp, boost, qt-build, thormang3-action-script-player, visualization-msgs, humanoid-nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-demo";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_demo/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "9f7f8a620e49890b715b1136f9a3b586a0cccc098ad088e14db56bb9aca75ef1";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs geometry-msgs eigen-conversions interactive-markers qt4 thormang3-walking-module-msgs eigen thormang3-foot-step-generator sensor-msgs cmake-modules roslib thormang3-feet-ft-module-msgs libyamlcpp thormang3-manipulation-module-msgs std-msgs roscpp boost qt-build visualization-msgs humanoid-nav-msgs ];
  propagatedBuildInputs = [ robotis-controller-msgs geometry-msgs eigen-conversions interactive-markers qt4 thormang3-walking-module-msgs eigen thormang3-foot-step-generator thormang3-navigation sensor-msgs cmake-modules roslib thormang3-feet-ft-module-msgs libyamlcpp thormang3-manipulation-module-msgs std-msgs roscpp boost qt-build thormang3-action-script-player visualization-msgs humanoid-nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A GUI program for controlling a THORMANG3.
    Initial posture, walking, manipulation, head control are available with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
