
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-pkgs, joy, nav-msgs, robotont-description, robotont-nuc-description, roscpp, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-robotont-gazebo";
  version = "0.0.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "robotont-release";
        repo = "robotont_gazebo-release";
        rev = "release/melodic/robotont_gazebo/0.0.2-1";
        sha256 = "sha256-LXgQ3IOlTBrylr12nOhSNdAmYD5+ENGePJ1LA79v+A0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-pkgs joy nav-msgs robotont-description robotont-nuc-description roscpp rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robotont_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
