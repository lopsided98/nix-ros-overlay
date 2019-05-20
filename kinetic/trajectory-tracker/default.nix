
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, trajectory-tracker-msgs, neonavigation-common, interactive-markers, eigen, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-tracker";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/trajectory_tracker/0.4.0-1.tar.gz;
    sha256 = "5285eb2fbe42377ecb38dd85abbf358bdb8912b3b0804bbfe93271654a854913";
  };

  buildInputs = [ tf2-geometry-msgs tf2-ros tf2 nav-msgs trajectory-tracker-msgs neonavigation-common interactive-markers eigen roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ tf2-geometry-msgs tf2-ros tf2 nav-msgs trajectory-tracker-msgs neonavigation-common interactive-markers eigen roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Path following control package for wheeled mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
