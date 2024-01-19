
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pr2-controllers-msgs, roslaunch, rospy, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-pr2-position-scripts";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/pr2_position_scripts/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "a7961ac1ae17a5f1e15c714270d14312db801fd2b52991c70e8567bb105ddd7d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ actionlib pr2-controllers-msgs rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a number of scripts to set various components of the PR2. They are used in the apps to improve usablity.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
