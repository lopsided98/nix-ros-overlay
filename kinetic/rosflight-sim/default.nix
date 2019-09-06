
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, catkin, gazeboSimulator, gazebo-plugins, rosflight-firmware, eigen, roscpp, geometry-msgs, rosflight-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-sim";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_sim/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "50e9095e43cb549af5deb4a00b393971084674c33e175b4c1650e5f69d30e9d5";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros gazeboSimulator.gazebo gazebo-plugins rosflight-firmware eigen roscpp geometry-msgs rosflight-msgs ];
  propagatedBuildInputs = [ gazebo-ros gazeboSimulator.gazebo gazebo-plugins rosflight-firmware eigen roscpp geometry-msgs rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software-in-the-loop (SIL) simulator for the ROSflight firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
