
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosflight-firmware, gazeboSimulator, geometry-msgs, rosflight-msgs, catkin, eigen, roscpp, gazebo-ros, gazebo-plugins }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-sim";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_sim/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "50e9095e43cb549af5deb4a00b393971084674c33e175b4c1650e5f69d30e9d5";
  };

  buildType = "catkin";
  buildInputs = [ rosflight-firmware geometry-msgs rosflight-msgs gazeboSimulator.gazebo eigen roscpp gazebo-ros gazebo-plugins ];
  propagatedBuildInputs = [ rosflight-firmware geometry-msgs rosflight-msgs gazeboSimulator.gazebo eigen roscpp gazebo-ros gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software-in-the-loop (SIL) simulator for the ROSflight firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
