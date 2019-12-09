
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, message-filters, geometry-msgs, std-msgs, catkin, tf2, cmake-modules, neonavigation-common, rosunit, roslint, tf2-geometry-msgs, eigen, roscpp, nav-msgs, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-track-odometry";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/track_odometry/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "c940bc976d54c2b889facc8658a78df2180bff46a8125187f4588accf6ff8de3";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs message-filters geometry-msgs std-msgs cmake-modules roscpp neonavigation-common tf2-geometry-msgs eigen tf2 nav-msgs tf2-ros ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs message-filters geometry-msgs std-msgs cmake-modules roscpp neonavigation-common tf2-geometry-msgs eigen tf2 nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Odometry slip compensation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
