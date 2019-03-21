
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf }:
buildRosPackage {
  pname = "ros-kinetic-nextage-description";
  version = "0.8.4";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_description/0.8.4-0.tar.gz;
    sha256 = "0fa89e016bd9d6e4a87f70412f9493ca49fae68c6aeb794ca1974bd752c493cb";
  };

  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ catkin urdf ];

  meta = {
    description = ''As a part of rtmros_nextage package that is a ROS interface for <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc, this package provides its 3D model that can be used in simulation and <a href="http://ros.org/wiki/moveit">MoveIt!</a>-based motion planning tasks.'';
    #license = lib.licenses.BSD;
  };
}
