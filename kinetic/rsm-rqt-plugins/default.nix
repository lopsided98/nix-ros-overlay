
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, cmake-modules, rsm-msgs, rqt-gui, catkin, rqt-gui-cpp, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rsm-rqt-plugins";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/kinetic/rsm_rqt_plugins/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "a40b4dad204de8cc9ec35f13aba8bc96cfbff3ac2fa389e3d9acc2c7e0df6f62";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs cmake-modules rsm-msgs rqt-gui rqt-gui-cpp std-msgs roscpp ];
  propagatedBuildInputs = [ std-srvs cmake-modules rsm-msgs rqt-gui rqt-gui-cpp std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rqt_plugins package includes the Robot
		Statemachine GUI plugin for rqt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
