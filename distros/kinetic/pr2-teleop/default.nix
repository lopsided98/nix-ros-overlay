
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, pr2-controllers-msgs, roscpp, rospy, std-msgs, tf, topic-tools }:
buildRosPackage {
  pname = "ros-kinetic-pr2-teleop";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/pr2_teleop/0.6.0-0.tar.gz";
    name = "0.6.0-0.tar.gz";
    sha256 = "d02cac609671d94ffff3e7cfcca15233bdd780bc649939e6012eb44b4c367588";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib geometry-msgs pr2-controllers-msgs roscpp rospy std-msgs tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_teleop package'';
    license = with lib.licenses; [ "TODO" ];
  };
}
