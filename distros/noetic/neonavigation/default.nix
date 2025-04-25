
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, joystick-interrupt, map-organizer, neonavigation-common, neonavigation-launch, obj-to-pointcloud, planner-cspace, safety-limiter, track-odometry, trajectory-tracker }:
buildRosPackage {
  pname = "ros-noetic-neonavigation";
  version = "0.17.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation/0.17.7-1.tar.gz";
    name = "0.17.7-1.tar.gz";
    sha256 = "6b9ea1da71eb0dabde69345ce34aeccba1bb69d28329cdce54f05cd962bf6f4d";
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
