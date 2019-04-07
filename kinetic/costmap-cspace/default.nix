
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, costmap-cspace-msgs, sensor-msgs, catkin, tf2-ros, roscpp, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, laser-geometry, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-costmap-cspace";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/costmap_cspace/0.3.1-0.tar.gz;
    sha256 = "5d3d73c8b82c975b0b37c474c692007b2f8989e8383548ce53ea3c974ffefefd";
  };

  buildInputs = [ tf2-geometry-msgs costmap-cspace-msgs sensor-msgs roscpp tf2-ros tf2-sensor-msgs nav-msgs neonavigation-common xmlrpcpp laser-geometry geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ tf2-geometry-msgs costmap-cspace-msgs sensor-msgs roscpp tf2-ros tf2-sensor-msgs nav-msgs neonavigation-common xmlrpcpp laser-geometry geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space costmap package'';
    #license = lib.licenses.BSD;
  };
}
