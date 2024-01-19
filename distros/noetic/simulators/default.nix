
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-pkgs, robot, rqt-common-plugins, rqt-robot-plugins, stage-ros }:
buildRosPackage {
  pname = "ros-noetic-simulators";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/noetic/simulators/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "d8c22690d65b57f67296923ab30e2ef65dad64627905247d52533c920285ee17";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros-pkgs robot rqt-common-plugins rqt-robot-plugins stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
