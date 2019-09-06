
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, track-odometry, costmap-cspace, planner-cspace, safety-limiter, joystick-interrupt, catkin, map-organizer, obj-to-pointcloud, neonavigation-common, trajectory-tracker, neonavigation-launch }:
buildRosPackage {
  pname = "ros-melodic-neonavigation";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/neonavigation/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "25f18202639bbe812c794778fbe23ff8055854a0f6f1f797368eac13f8e03262";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ track-odometry costmap-cspace planner-cspace safety-limiter joystick-interrupt map-organizer obj-to-pointcloud neonavigation-common trajectory-tracker neonavigation-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
