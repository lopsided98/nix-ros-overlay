
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, map-server, planner-cspace, safety-limiter, tf2-ros, trajectory-tracker, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-launch";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_launch/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "ed913f439205c450f081e50a427adc680f9698e41c0277e7d6e32a1147e6591c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-cspace map-server planner-cspace safety-limiter tf2-ros trajectory-tracker trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Demonstration and sample launch files for neonavigation meta-package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
