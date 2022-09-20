
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-pkgs, robot, rqt-common-plugins, rqt-robot-plugins, stage-ros }:
buildRosPackage {
  pname = "ros-melodic-simulators";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/melodic/simulators/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "5a6ddc7bfbe78170db5541bdab3f2ab031abcd787b4d087e41d010acb6de2455";
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
