
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, map-server, planner-cspace, safety-limiter, tf2-ros, trajectory-tracker, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-launch";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_launch/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "90f94b612ac0ed5104b89e3481e8a6ec404bb170a5d137b4a0d709adfdc55cf5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace map-server planner-cspace safety-limiter tf2-ros trajectory-tracker trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
