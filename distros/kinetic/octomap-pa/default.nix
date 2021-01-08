
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, laser-geometry, message-generation, message-runtime, nav-msgs, octomap-msgs, octomap-ros, parameter-pa, pcl, pcl-conversions, pcl-ros, roscpp, sensor-msgs, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-octomap-pa";
  version = "1.3.3";

  src = fetchurl {
    url = "https://github.com/TUC-ProAut/ros_octomap-release/archive/release/kinetic/octomap_pa/1.3.3-0.tar.gz";
    name = "1.3.3-0.tar.gz";
    sha256 = "f04d282323fadf8a9df0c684ac198b9d2df8423042bd2e9062d39969e2502b0e";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs laser-geometry message-runtime nav-msgs octomap-msgs octomap-ros parameter-pa pcl pcl-conversions pcl-ros roscpp sensor-msgs std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ProAut octomap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
