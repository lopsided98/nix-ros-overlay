
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf2-geometry-msgs, roslint, trajectory-msgs, sensor-msgs, catkin, message-filters, tf2-ros, tf2, rostest, nav-msgs, neonavigation-common, eigen, std-msgs, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-track-odometry";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/track_odometry/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "c940bc976d54c2b889facc8658a78df2180bff46a8125187f4588accf6ff8de3";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules tf2-geometry-msgs trajectory-msgs sensor-msgs message-filters tf2-ros tf2 nav-msgs neonavigation-common eigen std-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ cmake-modules tf2-geometry-msgs trajectory-msgs sensor-msgs message-filters tf2-ros tf2 nav-msgs neonavigation-common eigen std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Odometry slip compensation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
