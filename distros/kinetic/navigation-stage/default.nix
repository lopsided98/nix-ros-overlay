
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, fake-localization, gmapping, map-server, move-base, stage-ros }:
buildRosPackage {
  pname = "ros-kinetic-navigation-stage";
  version = "0.2.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/navigation_stage/0.2.3-0.tar.gz";
    name = "0.2.3-0.tar.gz";
    sha256 = "c6e95bd91459bdc458ce90fc9606838c7c098a4fe61dbcfe25d759bd9b935f0d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl fake-localization gmapping map-server move-base stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds example launch files for running the ROS navigation stack in stage.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
