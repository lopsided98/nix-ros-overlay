
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, costmap-cspace-msgs, sensor-msgs, catkin, tf2-ros, roscpp, tf2-sensor-msgs, rostest, nav-msgs, neonavigation-common, xmlrpcpp, laser-geometry, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-costmap-cspace";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/costmap_cspace/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "c8a9d220abd9f4fdd5cd281ff4afc92c8aea6079c22949a27dc003e11b64cb02";
  };

  buildType = "catkin";
  buildInputs = [ tf2-geometry-msgs costmap-cspace-msgs sensor-msgs roscpp tf2-ros tf2-sensor-msgs nav-msgs neonavigation-common xmlrpcpp laser-geometry geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ tf2-geometry-msgs costmap-cspace-msgs sensor-msgs tf2-ros tf2-sensor-msgs laser-geometry nav-msgs neonavigation-common xmlrpcpp roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3-dof configuration space costmap package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
