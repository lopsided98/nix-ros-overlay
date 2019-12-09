
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rostest, geometry-msgs, costmap-cspace-msgs, catkin, tf2-sensor-msgs, laser-geometry, neonavigation-common, rosunit, roslint, tf2-geometry-msgs, roscpp, nav-msgs, xmlrpcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-costmap-cspace";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/costmap_cspace/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "55203176918452c48f2bcf230557889287969cd686afc87dfb9b9107e1101d67";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs costmap-cspace-msgs tf2-sensor-msgs laser-geometry neonavigation-common tf2-geometry-msgs roscpp nav-msgs xmlrpcpp tf2-ros ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs costmap-cspace-msgs tf2-sensor-msgs laser-geometry neonavigation-common tf2-geometry-msgs roscpp nav-msgs xmlrpcpp tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space costmap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
