
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, track-odometry, costmap-cspace, planner-cspace, safety-limiter, joystick-interrupt, catkin, map-organizer, obj-to-pointcloud, neonavigation-common, trajectory-tracker, neonavigation-launch }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "23d9451b4f56dc52ee8f1f4997a2f01e35e2b93e8bfbb4dd998825e0583d12e9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ track-odometry costmap-cspace planner-cspace safety-limiter joystick-interrupt map-organizer obj-to-pointcloud neonavigation-common trajectory-tracker neonavigation-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
