
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros-pkgs, robot, catkin, rqt-robot-plugins, stage-ros, rqt-common-plugins }:
buildRosPackage {
  pname = "ros-melodic-simulators";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/metapackages-release/archive/release/melodic/simulators/1.4.1-0.tar.gz;
    sha256 = "5a6ddc7bfbe78170db5541bdab3f2ab031abcd787b4d087e41d010acb6de2455";
  };

  propagatedBuildInputs = [ stage-ros gazebo-ros-pkgs rqt-common-plugins robot rqt-robot-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    #license = lib.licenses.BSD;
  };
}
