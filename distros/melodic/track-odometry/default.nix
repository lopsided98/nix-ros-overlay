
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, message-filters, nav-msgs, neonavigation-common, roscpp, roslint, rostest, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-track-odometry";
  version = "0.10.4-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/track_odometry/0.10.4-1.tar.gz";
    name = "0.10.4-1.tar.gz";
    sha256 = "eb0d0543d17ab8829cfd2ff3992a9f5c3279df3b5a6268b6942af8f5350f4c9c";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ eigen geometry-msgs message-filters nav-msgs neonavigation-common roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Odometry slip compensation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
