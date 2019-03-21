
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, map-server, amcl, catkin, move-base, stage-ros, fake-localization }:
buildRosPackage {
  pname = "ros-kinetic-navigation-stage";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/navigation_stage/0.2.3-0.tar.gz;
    sha256 = "c6e95bd91459bdc458ce90fc9606838c7c098a4fe61dbcfe25d759bd9b935f0d";
  };

  propagatedBuildInputs = [ stage-ros gmapping map-server amcl fake-localization move-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package holds example launch files for running the ROS navigation stack in stage.'';
    #license = lib.licenses.BSD;
  };
}
