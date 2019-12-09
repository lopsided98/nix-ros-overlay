
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, planner-cspace, joystick-interrupt, track-odometry, neonavigation-launch, catkin, map-organizer, neonavigation-common, safety-limiter, trajectory-tracker, costmap-cspace, obj-to-pointcloud }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "23d9451b4f56dc52ee8f1f4997a2f01e35e2b93e8bfbb4dd998825e0583d12e9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ planner-cspace joystick-interrupt track-odometry neonavigation-launch map-organizer neonavigation-common safety-limiter trajectory-tracker costmap-cspace obj-to-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
