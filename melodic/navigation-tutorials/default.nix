
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-setup-tf-tutorial, simple-navigation-goals-tutorial, point-cloud-publisher-tutorial, laser-scan-publisher-tutorial, catkin, roomba-stage, odometry-publisher-tutorial, navigation-stage }:
buildRosPackage {
  pname = "ros-melodic-navigation-tutorials";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/navigation_tutorials/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "0dc79f75fcfaff0dd5de61b32502b6e657d2e5d2994252bd974989e8a1848793";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-setup-tf-tutorial simple-navigation-goals-tutorial point-cloud-publisher-tutorial laser-scan-publisher-tutorial roomba-stage odometry-publisher-tutorial navigation-stage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation related tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
