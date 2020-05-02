
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, geometry-msgs, laser-geometry, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-costmap-cspace";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/costmap_cspace/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "5a29b530a08c7d363b3ce201e8e923a1ad29ba3761e27977fe6ccd7c996704a2";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ costmap-cspace-msgs geometry-msgs laser-geometry nav-msgs neonavigation-common roscpp sensor-msgs tf2-geometry-msgs tf2-ros tf2-sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space costmap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
