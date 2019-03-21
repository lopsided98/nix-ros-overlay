
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf, pcl, sensor-msgs, catkin, roscpp, octomap-msgs, laser-geometry, nav-msgs, octomap-ros, message-generation, message-runtime, pcl-ros, std-msgs, parameter-pa, pcl-conversions, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-octomap-pa";
  version = "1.3.3";

  src = fetchurl {
    url = https://github.com/TUC-ProAut/ros_octomap-release/archive/release/kinetic/octomap_pa/1.3.3-0.tar.gz;
    sha256 = "f04d282323fadf8a9df0c684ac198b9d2df8423042bd2e9062d39969e2502b0e";
  };

  propagatedBuildInputs = [ std-srvs pcl parameter-pa sensor-msgs roscpp octomap-msgs laser-geometry nav-msgs octomap-ros message-runtime pcl-ros std-msgs tf pcl-conversions geometry-msgs ];
  nativeBuildInputs = [ std-srvs tf pcl parameter-pa sensor-msgs catkin roscpp octomap-msgs message-generation nav-msgs octomap-ros pcl-ros std-msgs laser-geometry pcl-conversions geometry-msgs ];

  meta = {
    description = ''ProAut octomap package'';
    #license = lib.licenses.BSD;
  };
}
