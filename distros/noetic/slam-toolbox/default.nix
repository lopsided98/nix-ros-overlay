
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, cmake-modules, eigen, gtest, interactive-markers, libg2o, liblapack, map-server, message-filters, message-runtime, nav-msgs, pluginlib, qt5, rosconsole, roscpp, sensor-msgs, slam-toolbox-msgs, sparse-bundle-adjustment, std-msgs, std-srvs, suitesparse, tbb, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-slam-toolbox";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/noetic/slam_toolbox/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "4f7c8dcd075d03764e2018b351f064bd2b8302a667cee9cc7c5ce3f2b5f697a6";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ ceres-solver eigen interactive-markers libg2o liblapack map-server message-filters message-runtime nav-msgs pluginlib qt5.qtbase rosconsole roscpp sensor-msgs slam-toolbox-msgs sparse-bundle-adjustment std-msgs std-srvs suitesparse tbb tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
