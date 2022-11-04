
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, fake-localization, gmapping, map-server, move-base, stage-ros }:
buildRosPackage {
  pname = "ros-melodic-navigation-stage";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/navigation_stage/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "7b69a708535f1a2a6fb5afa0c6cb62c8ca229a04e0d9a979b2cd3f5e65ca35a9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl fake-localization gmapping map-server move-base stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds example launch files for running the ROS navigation stack in stage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
