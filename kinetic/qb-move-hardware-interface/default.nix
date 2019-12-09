
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-toolbox, interactive-markers, hardware-interface, catkin, roscpp, tf2-geometry-msgs, transmission-interface, tf2, qb-device-hardware-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-hardware-interface";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_hardware_interface/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "5cb15bf08b582c8eb92b3bbd8ab3eb960919d2234d35d66ef734c1cbe2167b27";
  };

  buildType = "catkin";
  buildInputs = [ control-toolbox interactive-markers hardware-interface tf2 tf2-geometry-msgs transmission-interface roscpp qb-device-hardware-interface ];
  propagatedBuildInputs = [ control-toolbox interactive-markers hardware-interface tf2 tf2-geometry-msgs transmission-interface roscpp qb-device-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
