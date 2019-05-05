
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros-pkgs, robot, catkin, rqt-robot-plugins, stage-ros, rqt-common-plugins }:
buildRosPackage {
  pname = "ros-lunar-simulators";
  version = "1.3.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/lunar/simulators/1.3.2-0.tar.gz;
    sha256 = "8c5b6f2fdb06c76e7dfb68aa506e543026d698c0cc65cfb021668dab6b96529f";
  };

  propagatedBuildInputs = [ gazebo-ros-pkgs robot rqt-robot-plugins stage-ros rqt-common-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
