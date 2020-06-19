
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, cmake-modules, eigen, gtest, interactive-markers, libg2o, liblapack, map-server, message-filters, message-runtime, nav-msgs, pluginlib, qt5, rosconsole, roscpp, sensor-msgs, slam-toolbox-msgs, sparse-bundle-adjustment, std-msgs, std-srvs, suitesparse, tbb, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-slam-toolbox";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/noetic/slam_toolbox/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "a9de8886b830e18968be0a31b50d16afcd47b4b776c5063e3db6a9d9837f74d0";
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
