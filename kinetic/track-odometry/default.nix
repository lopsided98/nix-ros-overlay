
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, message-filters, geometry-msgs, std-msgs, catkin, tf2, cmake-modules, neonavigation-common, rosunit, roslint, tf2-geometry-msgs, eigen, roscpp, nav-msgs, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-track-odometry";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/track_odometry/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "f1fa6d114072dbde95e20d175dbf89ec6e68cad93f0d999ccf43b8d2483b355e";
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
