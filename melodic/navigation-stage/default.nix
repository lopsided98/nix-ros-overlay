
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, stage-ros, catkin, gmapping, fake-localization, move-base, amcl }:
buildRosPackage {
  pname = "ros-melodic-navigation-stage";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/navigation_stage/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "369bdc91f45d18128113301f533112e08708c83e02b16ae38f1bd765114d6310";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ map-server stage-ros gmapping fake-localization move-base amcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds example launch files for running the ROS navigation stack in stage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
