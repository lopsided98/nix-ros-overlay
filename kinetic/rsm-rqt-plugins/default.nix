
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, rsm-msgs, rqt-gui, catkin, rqt-gui-cpp, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rsm-rqt-plugins";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_rqt_plugins/1.1.2-1.tar.gz;
    sha256 = "6dc89578894230128eb5087a7cd66ad4c600287b8fac01a44ee387fd3bdfc1c2";
  };

  buildInputs = [ cmake-modules rsm-msgs rqt-gui rqt-gui-cpp roscpp ];
  propagatedBuildInputs = [ cmake-modules rsm-msgs rqt-gui rqt-gui-cpp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rqt_plugins package includes the Robot Statemachine GUI plugin for rqt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
