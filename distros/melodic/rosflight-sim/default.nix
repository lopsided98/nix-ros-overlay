
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo, gazebo-plugins, gazebo-ros, geometry-msgs, roscpp, rosflight-firmware, rosflight-msgs }:
buildRosPackage {
  pname = "ros-melodic-rosflight-sim";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/melodic/rosflight_sim/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "231909a454064b5b3d1d7a37839d4b35238e308318ae9f04857a7f0b45691283";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen gazebo gazebo-plugins gazebo-ros geometry-msgs roscpp rosflight-firmware rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software-in-the-loop (SIL) simulator for the ROSflight firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
