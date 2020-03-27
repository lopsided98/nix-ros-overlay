
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo-plugins, gazebo-ros, gazeboSimulator, geometry-msgs, roscpp, rosflight-firmware, rosflight-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-sim";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_sim/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "fccbbd117fbc2b75a795a09ae755fe95d39b82c185faf12ac595dc1900622d84";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen gazebo-plugins gazebo-ros gazeboSimulator.gazebo geometry-msgs roscpp rosflight-firmware rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software-in-the-loop (SIL) simulator for the ROSflight firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
