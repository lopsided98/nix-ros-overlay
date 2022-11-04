
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-moveit-config, pr2-moveit-plugins }:
buildRosPackage {
  pname = "ros-melodic-moveit-pr2";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_pr2-release/archive/release/melodic/moveit_pr2/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "8a3751258daacbd61d9aeb30c604461c0b75b192e98186621eb6cbae8c9b49ad";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-moveit-config pr2-moveit-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''All PR2-specific packages for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
