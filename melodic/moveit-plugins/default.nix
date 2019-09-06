
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-simple-controller-manager, moveit-fake-controller-manager, catkin, moveit-ros-control-interface }:
buildRosPackage {
  pname = "ros-melodic-moveit-plugins";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_plugins/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "50d9d908c1d2fa7fe7f064d766471adb9daf453293026ca33ad7c6d87129aed6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-simple-controller-manager moveit-ros-control-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for MoveIt! plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
