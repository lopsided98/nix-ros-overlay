
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-moveit-config, pr2-moveit-plugins }:
buildRosPackage {
  pname = "ros-kinetic-moveit-pr2";
  version = "0.7.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_pr2-release/archive/release/kinetic/moveit_pr2/0.7.1-0.tar.gz";
    name = "0.7.1-0.tar.gz";
    sha256 = "c70f2fae2a37dd512da5400ffa0070a6763a3c61ad7458e64510e09664362113";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-moveit-config pr2-moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''All PR2-specific packages for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
