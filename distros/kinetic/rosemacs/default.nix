
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, emacs }:
buildRosPackage {
  pname = "ros-kinetic-rosemacs";
  version = "0.4.12";

  src = fetchurl {
    url = "https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/kinetic/rosemacs/0.4.12-0.tar.gz";
    name = "0.4.12-0.tar.gz";
    sha256 = "a9fc7e9c974b4fc3d1d86222decf5cfee267f66d172c23b267007e57e65a37ad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ emacs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS tools for those who live in Emacs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
