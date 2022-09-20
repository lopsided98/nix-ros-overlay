
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, mav-msgs, roscpp, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-rotors-joy-interface";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_joy_interface/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "ee68f6dbc4f3d3b8b1377de6ceca6113c1d528d5a898c8766c62c0394bfd4db1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs mav-msgs roscpp sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rotors_joy_interface package to control MAVs with a joystick'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
