
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-queue, dwb-critics, dwb-local-planner, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-core2, nav-grid-iterators, pluginlib, pythonPackages, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-mir-dwb-critics";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_dwb_critics/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "248243c2b1066676650f91074be1912df017c0a3579a0d5db76c672a8f5406c4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ angles costmap-queue dwb-critics dwb-local-planner geometry-msgs nav-2d-msgs nav-2d-utils nav-core2 nav-grid-iterators pluginlib pythonPackages.matplotlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Trajectory critics for the dwb_local_planner that work well together with the SBPL global planner on the MiR robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
