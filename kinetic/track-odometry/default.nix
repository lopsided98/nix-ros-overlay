
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, cmake-modules, trajectory-msgs, sensor-msgs, catkin, tf2-ros, rostest, tf2, nav-msgs, neonavigation-common, eigen, std-msgs, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-track-odometry";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/track_odometry/0.3.1-0.tar.gz;
    sha256 = "c8965d208175962147210ca960cde9f49711ce33599759dd541e3af8de9b1c56";
  };

  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ cmake-modules tf2-geometry-msgs trajectory-msgs sensor-msgs tf2-ros tf2 nav-msgs neonavigation-common eigen std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ cmake-modules tf2-geometry-msgs trajectory-msgs sensor-msgs catkin tf2-ros tf2 nav-msgs neonavigation-common eigen std-msgs roscpp geometry-msgs ];

  meta = {
    description = ''Odometry slip compensation package'';
    #license = lib.licenses.BSD;
  };
}
