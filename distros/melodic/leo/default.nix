
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-teleop }:
buildRosPackage {
  pname = "ros-melodic-leo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/melodic/leo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "62e5c07c40077e8aefa297970414181c075494c14bf1d99a9d9b3cb123d8114d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-description leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
