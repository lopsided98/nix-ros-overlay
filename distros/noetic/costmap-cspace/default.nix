
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-msgs, geometry-msgs, laser-geometry, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs, xmlrpcpp }:
buildRosPackage {
  pname = "ros-noetic-costmap-cspace";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/costmap_cspace/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "52e456b44a91a7b91115b42ade78faa39e1b7b0ebad181e0a84393fe323b9afc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ costmap-cspace-msgs geometry-msgs laser-geometry nav-msgs neonavigation-common roscpp sensor-msgs tf2-geometry-msgs tf2-ros tf2-sensor-msgs xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space costmap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
