
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, eigen-conversions, geometry-msgs, humanoid-nav-msgs, interactive-markers, libyamlcpp, qt-build, qt4, robotis-controller-msgs, roscpp, roslib, sensor-msgs, std-msgs, thormang3-action-script-player, thormang3-feet-ft-module-msgs, thormang3-foot-step-generator, thormang3-manipulation-module-msgs, thormang3-navigation, thormang3-walking-module-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-demo";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/thormang3_demo/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "9f7f8a620e49890b715b1136f9a3b586a0cccc098ad088e14db56bb9aca75ef1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen eigen-conversions geometry-msgs humanoid-nav-msgs interactive-markers libyamlcpp qt-build qt4 robotis-controller-msgs roscpp roslib sensor-msgs std-msgs thormang3-action-script-player thormang3-feet-ft-module-msgs thormang3-foot-step-generator thormang3-manipulation-module-msgs thormang3-navigation thormang3-walking-module-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A GUI program for controlling a THORMANG3.
    Initial posture, walking, manipulation, head control are available with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
