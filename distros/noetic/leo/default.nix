
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-teleop }:
buildRosPackage {
  pname = "ros-noetic-leo";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "ec4d01d8815b6a7bfdd25a81c9253acd166942d4da9badae5f651b1c97ac9002";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-description leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
