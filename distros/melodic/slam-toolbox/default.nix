
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ceres-solver, cmake-modules, eigen, interactive-markers, libg2o, liblapack, map-server, message-filters, message-runtime, nav-msgs, pluginlib, qt5, rosconsole, roscpp, rviz, sensor-msgs, slam-toolbox-msgs, sparse-bundle-adjustment, std-msgs, std-srvs, suitesparse, tbb, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-slam-toolbox";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/slam_toolbox-release/archive/release/melodic/slam_toolbox/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "ff4ad2fe6af0fe83f2def7b3fe525713311a0aa86db16cda3e3033dc2731afec";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ ceres-solver eigen interactive-markers libg2o liblapack map-server message-filters message-runtime nav-msgs pluginlib qt5.qtbase rosconsole roscpp rviz sensor-msgs slam-toolbox-msgs sparse-bundle-adjustment std-msgs std-srvs suitesparse tbb tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a sped up improved slam karto with updated SDK and visualization and modification toolsets'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
