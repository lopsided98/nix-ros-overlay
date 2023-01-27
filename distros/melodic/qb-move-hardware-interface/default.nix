
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, interactive-markers, qb-device-hardware-interface, roscpp, tf2, tf2-geometry-msgs, transmission-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-move-hardware-interface";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move_hardware_interface/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "b6d8969c96b05f146254f6d09819dcc557f5cb7d8dc1dc2199111308ba76aa37";
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
