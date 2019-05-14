
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, track-odometry, costmap-cspace, planner-cspace, safety-limiter, joystick-interrupt, catkin, map-organizer, obj-to-pointcloud, neonavigation-common, trajectory-tracker, neonavigation-launch }:
buildRosPackage {
  pname = "ros-lunar-neonavigation";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/neonavigation/0.4.0-1.tar.gz;
    sha256 = "2134ec80ca0ba50deeb2a8acf890d6b56eef36d4e2bb12e41c23b483e06e50b7";
  };

  propagatedBuildInputs = [ track-odometry costmap-cspace planner-cspace safety-limiter joystick-interrupt map-organizer obj-to-pointcloud neonavigation-common trajectory-tracker neonavigation-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
