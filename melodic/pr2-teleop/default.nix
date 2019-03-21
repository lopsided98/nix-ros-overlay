
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, tf, catkin, std-msgs, actionlib, rospy, topic-tools, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-teleop";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/pr2_teleop/0.6.1-0.tar.gz;
    sha256 = "58621f94cdf383410e0b4e896be17b09320461196422f8e14e28e19a58680625";
  };

  propagatedBuildInputs = [ pr2-controllers-msgs actionlib std-msgs geometry-msgs tf topic-tools roscpp rospy ];
  nativeBuildInputs = [ pr2-controllers-msgs topic-tools catkin roscpp rospy actionlib std-msgs tf geometry-msgs ];

  meta = {
    description = ''The pr2_teleop package'';
    #license = lib.licenses.TODO;
  };
}
