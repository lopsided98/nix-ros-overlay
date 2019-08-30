
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, map-server, costmap-cspace, planner-cspace, trajectory-tracker-rviz-plugins, safety-limiter, catkin, tf2-ros, trajectory-tracker }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-launch";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/melodic/neonavigation_launch/0.4.2-1.tar.gz;
    sha256 = "b699462b90a6470d258ea2c7f57f3f09c888e67508d4d0f2ef435a88a7bee4ef";
  };

  propagatedBuildInputs = [ map-server costmap-cspace trajectory-tracker-rviz-plugins planner-cspace safety-limiter tf2-ros trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration and sample launch files for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
