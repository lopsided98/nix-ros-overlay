
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robot-setup-tf-tutorial, simple-navigation-goals-tutorial, point-cloud-publisher-tutorial, laser-scan-publisher-tutorial, catkin, roomba-stage, odometry-publisher-tutorial, navigation-stage }:
buildRosPackage {
  pname = "ros-kinetic-navigation-tutorials";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/navigation_tutorials/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "8e04020090600f574236e8c6e4bd9aa6f8c9c9952839df279cb7bac4e86d6aad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-setup-tf-tutorial simple-navigation-goals-tutorial point-cloud-publisher-tutorial laser-scan-publisher-tutorial roomba-stage odometry-publisher-tutorial navigation-stage ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation related tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
