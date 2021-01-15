
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rb1-base-2dnav, rb1-base-control, rb1-base-gazebo, rb1-base-purepursuit }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-sim";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rb1_base_sim-release/archive/release/kinetic/rb1_base_sim/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "686efb3caeb68eca53580dcd53fbe68ba9293357193318404b27cc1f7b8902a9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rb1-base-2dnav rb1-base-control rb1-base-gazebo rb1-base-purepursuit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_sim metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
