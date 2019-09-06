
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, trajectory-tracker-msgs, neonavigation-common, interactive-markers, eigen, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-tracker";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/trajectory_tracker/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "f322efd88d2af2bb93f6ac398eb6fa5533be5c1dc897f0177d2e537b590e5ea3";
  };

  buildType = "catkin";
  buildInputs = [ tf2-geometry-msgs tf2-ros tf2 nav-msgs trajectory-tracker-msgs neonavigation-common interactive-markers eigen roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ tf2-geometry-msgs tf2-ros tf2 nav-msgs trajectory-tracker-msgs neonavigation-common interactive-markers eigen roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Path following control package for wheeled mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
