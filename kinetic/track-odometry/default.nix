
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, tf2-geometry-msgs, roslint, trajectory-msgs, sensor-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, neonavigation-common, eigen, std-msgs, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-track-odometry";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/track_odometry/0.4.0-1.tar.gz;
    sha256 = "d9804f54f1d5918f6809464f5570df05cc4646afa89d2f8e15b34022c0b65457";
  };

  buildInputs = [ cmake-modules tf2-geometry-msgs trajectory-msgs sensor-msgs tf2-ros tf2 nav-msgs neonavigation-common eigen std-msgs roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ cmake-modules tf2-geometry-msgs trajectory-msgs sensor-msgs tf2-ros tf2 nav-msgs neonavigation-common eigen std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Odometry slip compensation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
