
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, interactive-markers, qb-device-hardware-interface, roscpp, tf2, tf2-geometry-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-kinetic-qb-move-hardware-interface";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/kinetic/qb_move_hardware_interface/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "5cb15bf08b582c8eb92b3bbd8ab3eb960919d2234d35d66ef734c1cbe2167b27";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-toolbox hardware-interface interactive-markers qb-device-hardware-interface roscpp tf2 tf2-geometry-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
