
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, trajectory-tracker-msgs, neonavigation-common, interactive-markers, eigen, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-trajectory-tracker";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/trajectory_tracker/0.3.1-0.tar.gz;
    sha256 = "aab784d3551fefcd29e7b0636b6a38f015b2793ea4b6ab55fd85bd7e93cf5cd5";
  };

  buildInputs = [ tf2-geometry-msgs tf2-ros tf2 nav-msgs trajectory-tracker-msgs neonavigation-common interactive-markers eigen roscpp geometry-msgs ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ tf2-geometry-msgs tf2-ros tf2 nav-msgs trajectory-tracker-msgs neonavigation-common interactive-markers eigen roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Path following control package for wheeled mobile robot'';
    #license = lib.licenses.BSD;
  };
}
