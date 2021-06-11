
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-teleop }:
buildRosPackage {
  pname = "ros-noetic-leo";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "5f08094f385aff7988ecc1dd21d4fe4f9bfb35a651aea18389199d9eeb58a83d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-description leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
