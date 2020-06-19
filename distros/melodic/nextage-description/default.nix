
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf }:
buildRosPackage {
  pname = "ros-melodic-nextage-description";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_description/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "5d73e35355d25f5caa5137b793aabd2dd9daaa93e5e07b150b0e6baf3ab409cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''As a part of rtmros_nextage package that is a ROS interface for <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc, this package provides its 3D model that can be used in simulation and <a href="http://ros.org/wiki/moveit">MoveIt!</a>-based motion planning tasks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
