
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, joystick-interrupt, map-organizer, neonavigation-common, neonavigation-launch, obj-to-pointcloud, planner-cspace, safety-limiter, track-odometry, trajectory-tracker }:
buildRosPackage {
  pname = "ros-noetic-neonavigation";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "20e40c2f0b36aed81fdc058697adeb13bb0139c6718381c29f29efc3a9cc8954";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace joystick-interrupt map-organizer neonavigation-common neonavigation-launch obj-to-pointcloud planner-cspace safety-limiter track-odometry trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
