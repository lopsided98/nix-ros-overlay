
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, simple-navigation-goals-tutorial, odometry-publisher-tutorial, robot-setup-tf-tutorial, point-cloud-publisher-tutorial, roomba-stage, catkin, navigation-stage, laser-scan-publisher-tutorial }:
buildRosPackage {
  pname = "ros-melodic-navigation-tutorials";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/navigation_tutorials/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "0dc79f75fcfaff0dd5de61b32502b6e657d2e5d2994252bd974989e8a1848793";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ simple-navigation-goals-tutorial robot-setup-tf-tutorial odometry-publisher-tutorial point-cloud-publisher-tutorial navigation-stage roomba-stage laser-scan-publisher-tutorial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation related tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
