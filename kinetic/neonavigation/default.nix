
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, track-odometry, costmap-cspace, planner-cspace, safety-limiter, joystick-interrupt, catkin, map-organizer, obj-to-pointcloud, neonavigation-common, trajectory-tracker, neonavigation-launch }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation/0.3.1-0.tar.gz;
    sha256 = "ae827950b0f1c235d7a6a297d418a65290139bbb1da9d77bd269a3e6e2fbfb84";
  };

  propagatedBuildInputs = [ track-odometry costmap-cspace planner-cspace safety-limiter joystick-interrupt map-organizer obj-to-pointcloud neonavigation-common trajectory-tracker neonavigation-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
