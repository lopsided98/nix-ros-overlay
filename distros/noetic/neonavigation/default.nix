
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, joystick-interrupt, map-organizer, neonavigation-common, neonavigation-launch, obj-to-pointcloud, planner-cspace, safety-limiter, track-odometry, trajectory-tracker }:
buildRosPackage {
  pname = "ros-noetic-neonavigation";
  version = "0.10.8-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation/0.10.8-1.tar.gz";
    name = "0.10.8-1.tar.gz";
    sha256 = "f42a1ff6e567a378af914c1baf1baafb0a6030998c01295d7432cc4a39d1778b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace joystick-interrupt map-organizer neonavigation-common neonavigation-launch obj-to-pointcloud planner-cspace safety-limiter track-odometry trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
