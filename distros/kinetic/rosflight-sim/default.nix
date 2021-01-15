
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, gazebo, gazebo-plugins, gazebo-ros, geometry-msgs, roscpp, rosflight-firmware, rosflight-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosflight-sim";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/rosflight/rosflight-release/archive/release/kinetic/rosflight_sim/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "180368072bd4d9aab0e7304c69444ca4e03e3a7acc7b5f0af34f4eb4caf0fea0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen gazebo gazebo-plugins gazebo-ros geometry-msgs roscpp rosflight-firmware rosflight-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Software-in-the-loop (SIL) simulator for the ROSflight firmware'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
