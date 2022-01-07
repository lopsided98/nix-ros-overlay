
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-noetic-leo";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e425273e12ad7cd996dbe0576f757a75c01bc2fdab18b7e86841197a135766dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
