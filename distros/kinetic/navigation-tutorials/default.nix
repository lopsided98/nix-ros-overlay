
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-scan-publisher-tutorial, navigation-stage, odometry-publisher-tutorial, point-cloud-publisher-tutorial, robot-setup-tf-tutorial, roomba-stage, simple-navigation-goals-tutorial }:
buildRosPackage {
  pname = "ros-kinetic-navigation-tutorials";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/navigation_tutorials/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "8e04020090600f574236e8c6e4bd9aa6f8c9c9952839df279cb7bac4e86d6aad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ laser-scan-publisher-tutorial navigation-stage odometry-publisher-tutorial point-cloud-publisher-tutorial robot-setup-tf-tutorial roomba-stage simple-navigation-goals-tutorial ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation related tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
