
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, trajectory-tracker-msgs, neonavigation-common, interactive-markers, eigen, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-tracker";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/trajectory_tracker/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "157e50e514803ee1bb2d48c46b69faa4a1c8e8fe39ea2443163cbad112a8842e";
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
