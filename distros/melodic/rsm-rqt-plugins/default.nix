
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, roscpp, rqt-gui, rqt-gui-cpp, rsm-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rsm-rqt-plugins";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/rsm_rqt_plugins/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "10a50da0619295d4a0c946cd9ef634c09ec44c8ad3fb3298422d025989cd634c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules roscpp rqt-gui rqt-gui-cpp rsm-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rqt_plugins package includes the Robot
		Statemachine GUI plugin for rqt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
