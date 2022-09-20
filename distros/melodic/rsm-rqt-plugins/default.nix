
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, qt5, roscpp, rqt-gui, rqt-gui-cpp, rsm-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rsm-rqt-plugins";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/MarcoStb1993/robot_statemachine-release/archive/release/melodic/rsm_rqt_plugins/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "c4fc756e54002afb4f750d42869ea09b11207c61c20bdfc17b0c107379ff66d0";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ cmake-modules roscpp rqt-gui rqt-gui-cpp rsm-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rqt_plugins package includes the Robot
		Statemachine GUI plugin for rqt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
