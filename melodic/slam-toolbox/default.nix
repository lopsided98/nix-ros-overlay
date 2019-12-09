
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tbb, liblapack, interactive-markers, ceres-solver, pluginlib, suitesparse, eigen, tf2, nav-msgs, sensor-msgs, cmake-modules, tf2-geometry-msgs, qt5, rosconsole, tf2-ros, message-filters, std-msgs, std-srvs, catkin, roscpp, message-generation, libg2o, map-server, rviz, visualization-msgs, message-runtime, sparse-bundle-adjustment }:
buildRosPackage {
  pname = "ros-melodic-slam-toolbox";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/melodic/slam_toolbox/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "2b3a6f49e98e32b6fffb6e6e7e74b85f1c88b8741f31b1977893c58b22aa20b3";
  };

  buildType = "catkin";
  buildInputs = [ tbb liblapack interactive-markers ceres-solver pluginlib suitesparse eigen tf2 nav-msgs sensor-msgs cmake-modules tf2-geometry-msgs rosconsole tf2-ros message-filters std-msgs std-srvs roscpp message-generation libg2o map-server qt5.qtbase rviz visualization-msgs sparse-bundle-adjustment ];
  propagatedBuildInputs = [ tbb liblapack interactive-markers ceres-solver pluginlib suitesparse eigen tf2 nav-msgs sensor-msgs tf2-geometry-msgs rosconsole tf2-ros message-filters std-msgs std-srvs roscpp libg2o map-server qt5.qtbase rviz visualization-msgs message-runtime sparse-bundle-adjustment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
