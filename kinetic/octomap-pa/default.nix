
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, sensor-msgs, geometry-msgs, message-runtime, std-msgs, std-srvs, octomap-msgs, tf, catkin, laser-geometry, pcl, parameter-pa, pcl-conversions, octomap-ros, roscpp, message-generation, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-octomap-pa";
  version = "1.3.3";

  src = fetchurl {
    url = "https://github.com/TUC-ProAut/ros_octomap-release/archive/release/kinetic/octomap_pa/1.3.3-0.tar.gz";
    name = "1.3.3-0.tar.gz";
    sha256 = "f04d282323fadf8a9df0c684ac198b9d2df8423042bd2e9062d39969e2502b0e";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs geometry-msgs std-msgs std-srvs octomap-msgs tf laser-geometry parameter-pa pcl pcl-conversions octomap-ros roscpp message-generation nav-msgs ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs geometry-msgs std-msgs std-srvs octomap-msgs tf laser-geometry pcl parameter-pa pcl-conversions octomap-ros roscpp message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut octomap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
