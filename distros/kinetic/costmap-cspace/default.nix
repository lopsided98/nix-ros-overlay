
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, geometry-msgs, laser-geometry, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-costmap-cspace";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/costmap_cspace/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "d21e09117bd6ae019e39cfaa3a540b7e6c47c4360b5473dfa0d09a1a43603aca";
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
