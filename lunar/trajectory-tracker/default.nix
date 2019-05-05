
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, tf2-geometry-msgs, catkin, tf2-ros, tf2, rostest, nav-msgs, trajectory-tracker-msgs, neonavigation-common, interactive-markers, eigen, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-trajectory-tracker";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/trajectory_tracker/0.3.1-0.tar.gz;
    sha256 = "c1b08f05bbe0a901c545323708e6c05d4cac352f2447b3eec7d14c14d53a7129";
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
