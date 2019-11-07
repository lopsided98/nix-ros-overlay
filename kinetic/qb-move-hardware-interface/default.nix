
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, tf2-geometry-msgs, control-toolbox, catkin, tf2, interactive-markers, qb-device-hardware-interface, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-hardware-interface";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_hardware_interface/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "5cb15bf08b582c8eb92b3bbd8ab3eb960919d2234d35d66ef734c1cbe2167b27";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface tf2-geometry-msgs control-toolbox tf2 interactive-markers transmission-interface roscpp qb-device-hardware-interface ];
  propagatedBuildInputs = [ hardware-interface tf2-geometry-msgs control-toolbox tf2 interactive-markers transmission-interface roscpp qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
