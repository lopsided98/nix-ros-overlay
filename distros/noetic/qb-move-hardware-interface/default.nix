
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, interactive-markers, qb-device-hardware-interface, roscpp, tf2, tf2-geometry-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-move-hardware-interface";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move_hardware_interface/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "ec44b9258a5e89de49b2f2f50400fe10d1b1ebac26d81da3497e909f2f75c37c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox hardware-interface interactive-markers qb-device-hardware-interface roscpp tf2 tf2-geometry-msgs transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
