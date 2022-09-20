
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-scan-publisher-tutorial, navigation-stage, odometry-publisher-tutorial, point-cloud-publisher-tutorial, robot-setup-tf-tutorial, roomba-stage, simple-navigation-goals-tutorial }:
buildRosPackage {
  pname = "ros-melodic-navigation-tutorials";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/navigation_tutorials/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "c6c2d22bc24f5e224dbb15758e735708f490409a2318427b00d7ac673a4bf32d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ laser-scan-publisher-tutorial navigation-stage odometry-publisher-tutorial point-cloud-publisher-tutorial robot-setup-tf-tutorial roomba-stage simple-navigation-goals-tutorial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation related tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
