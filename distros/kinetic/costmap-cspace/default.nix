
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, geometry-msgs, laser-geometry, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-costmap-cspace";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/costmap_cspace/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "e669d8f230926351052d2cc2f200c74a5935e9aeca93b297ddfc9133771a6aa9";
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
