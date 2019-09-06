
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, libg2o, suitesparse, message-filters, tbb, message-generation, rviz, message-runtime, ceres-solver, std-srvs, tf2-geometry-msgs, catkin, tf2-ros, nav-msgs, std-msgs, sparse-bundle-adjustment, visualization-msgs, roscpp, cmake-modules, pluginlib, sensor-msgs, liblapack, tf2, qt5, interactive-markers, eigen }:
buildRosPackage {
  pname = "ros-melodic-slam-toolbox";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/melodic/slam_toolbox/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "9b4ec2b8a1a940e58ae2b4a196b2b1c476cc89c8f1866df328504fa59858d391";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole libg2o suitesparse message-filters qt5.qtbase tbb message-generation rviz ceres-solver std-srvs tf2-geometry-msgs tf2-ros nav-msgs sparse-bundle-adjustment std-msgs roscpp visualization-msgs cmake-modules pluginlib sensor-msgs liblapack tf2 interactive-markers eigen ];
  propagatedBuildInputs = [ rosconsole libg2o suitesparse message-filters qt5.qtbase tbb rviz message-runtime ceres-solver std-srvs tf2-geometry-msgs tf2-ros nav-msgs sparse-bundle-adjustment std-msgs roscpp visualization-msgs pluginlib sensor-msgs liblapack tf2 interactive-markers eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
