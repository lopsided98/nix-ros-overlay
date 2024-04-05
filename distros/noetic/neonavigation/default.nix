
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, joystick-interrupt, map-organizer, neonavigation-common, neonavigation-launch, obj-to-pointcloud, planner-cspace, safety-limiter, track-odometry, trajectory-tracker }:
buildRosPackage {
  pname = "ros-noetic-neonavigation";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "30d663234862c8c0830bc31a27b02a6e6d45aff4cf0c7e5f709cb85e8cb8c1dd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-cspace joystick-interrupt map-organizer neonavigation-common neonavigation-launch obj-to-pointcloud planner-cspace safety-limiter track-odometry trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The neonavigation meta-package including 3-dof configuration space planner";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
