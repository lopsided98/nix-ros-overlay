
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen }:
buildRosPackage {
  pname = "ros-noetic-iris-lama";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/eupedrosa/iris_lama-release/archive/release/noetic/iris_lama/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "e44735c6be4270290423282d6dcb8240c750373bcc2e2ce1e3adacff6c0be378";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''IRIS package for Localization and Mapping (LaMa).
        This packages includes the sparse-dense library for grid mapping,
        a 2D localization algorithm based on scan matching, an online SLAM solution
        with a dynamic likelihood field and a 2D RB Particle Filter SLAM solution
        with multithreading.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
