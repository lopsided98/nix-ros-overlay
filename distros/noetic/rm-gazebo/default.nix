
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, gazebo-ros, gazebo-ros-control, rm-common, rm-description, roboticsgroup-upatras-gazebo-plugins, roscpp, roslint }:
buildRosPackage {
  pname = "ros-noetic-rm-gazebo";
  version = "0.1.15-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "rm-controls";
        repo = "rm_control-release";
        rev = "release/noetic/rm_gazebo/0.1.15-1";
        sha256 = "sha256-jbEHSGzoN6OXTj+HriD6VHvDqZa/RIDgTl4l7yGUfTg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo gazebo-ros gazebo-ros-control rm-common rm-description roboticsgroup-upatras-gazebo-plugins roscpp roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A template for ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
