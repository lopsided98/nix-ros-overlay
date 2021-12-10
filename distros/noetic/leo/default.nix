
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-noetic-leo";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_common-release/archive/release/noetic/leo/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6dc09bfe60d6aa84be833076fe22b287c279c58fdff7263a79e79ff525982e3b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
