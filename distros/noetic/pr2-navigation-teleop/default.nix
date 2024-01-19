
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-machine, pr2-teleop, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-pr2-navigation-teleop";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/pr2_navigation_teleop/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "c00e9f1cec35b615a2bf681214efbbd39d7983a9a3fae4f435ff130ef732d887";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-machine pr2-teleop topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds a special teleop configuration for the PR2 robot that
     should be used when running applications that use autonomous navigation.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
