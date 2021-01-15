
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, pr2-controllers-msgs, rospy, tf }:
buildRosPackage {
  pname = "ros-kinetic-pr2-position-scripts";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_position_scripts/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "f3627395b8df0200b30871a045ad856bc35dad07ca169c5d1eeb29dc72115970";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib pr2-controllers-msgs rospy tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a number of scripts to set various components of the PR2. They are used in the apps to improve usablity.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
