
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-queue, dwb-critics, dwb-local-planner, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid-iterators, pluginlib, python3Packages, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-mir-dwb-critics";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_dwb_critics/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "162043eb5c6a5065163aad54d6dec3670e66c69e0b1067b6eaeb74c31dfae3d8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles costmap-queue dwb-critics dwb-local-planner geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid-iterators pluginlib python3Packages.matplotlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory critics for the dwb_local_planner that work well together with the SBPL global planner on the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
