
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, planner-cspace, map-server, catkin, safety-limiter, trajectory-tracker, costmap-cspace, tf2-ros, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-launch";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_launch/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0c69703711d4e9d6bbf27a15d6aad67fc466f81ca009561029df16108db3b065";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ planner-cspace map-server safety-limiter trajectory-tracker costmap-cspace tf2-ros trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
