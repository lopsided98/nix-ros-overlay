
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-teleop }:
buildRosPackage {
  pname = "ros-noetic-leo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "be9fe69f5332d2118a999e3c38f6aa9b17524e4107876354366d879646369d9a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-description leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
