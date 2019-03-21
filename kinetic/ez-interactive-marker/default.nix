
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, pythonPackages, rospy-message-converter, rostest, interactive-markers, visualization-msgs, rospy, std-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-ez-interactive-marker";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/neka-nat/ez_interactive_marker-release/archive/release/kinetic/ez_interactive_marker/0.0.2-0.tar.gz;
    sha256 = "eedeb0e20406c9ae3c30e3613ab12589fe5904243fcf2d14ac98fce2951e6a54";
  };

  checkInputs = [ pythonPackages.nose ];
  propagatedBuildInputs = [ rospy-message-converter roslib visualization-msgs rospy std-msgs tf ];
  nativeBuildInputs = [ rospy-message-converter rostest interactive-markers rospy tf catkin roslib ];

  meta = {
    description = ''Easily create interactive markers from yaml files'';
    #license = lib.licenses.BSD;
  };
}
