
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf }:
buildRosPackage {
  pname = "ros-melodic-nextage-description";
  version = "0.8.6-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_description/0.8.6-3.tar.gz";
    name = "0.8.6-3.tar.gz";
    sha256 = "fc5de78839960234d82b28541e497fba5ed8f85d81e6edaaeb6da0a4acb6db43";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''As a part of rtmros_nextage package that is a ROS interface for <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc, this package provides its 3D model that can be used in simulation and <a href="http://ros.org/wiki/moveit">MoveIt!</a>-based motion planning tasks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
