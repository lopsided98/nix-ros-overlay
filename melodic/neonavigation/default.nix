
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, planner-cspace, joystick-interrupt, track-odometry, neonavigation-launch, catkin, map-organizer, neonavigation-common, safety-limiter, trajectory-tracker, costmap-cspace, obj-to-pointcloud }:
buildRosPackage {
  pname = "ros-melodic-neonavigation";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/neonavigation/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "9aafd93b7493d0d42c9d60333bbd59c16cd43bf0a699e6b804de955c200e6f30";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ planner-cspace joystick-interrupt track-odometry neonavigation-launch map-organizer neonavigation-common safety-limiter trajectory-tracker costmap-cspace obj-to-pointcloud ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
