
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, simple-navigation-goals-tutorial, odometry-publisher-tutorial, robot-setup-tf-tutorial, point-cloud-publisher-tutorial, roomba-stage, catkin, navigation-stage, laser-scan-publisher-tutorial }:
buildRosPackage {
  pname = "ros-kinetic-navigation-tutorials";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/navigation_tutorials/0.2.3-0.tar.gz;
    sha256 = "8e04020090600f574236e8c6e4bd9aa6f8c9c9952839df279cb7bac4e86d6aad";
  };

  propagatedBuildInputs = [ simple-navigation-goals-tutorial robot-setup-tf-tutorial odometry-publisher-tutorial point-cloud-publisher-tutorial navigation-stage roomba-stage laser-scan-publisher-tutorial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation related tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
