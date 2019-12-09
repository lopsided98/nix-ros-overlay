
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, interactive-markers, catkin, tf2, neonavigation-common, rosunit, roslint, tf2-geometry-msgs, eigen, trajectory-tracker-msgs, roscpp, nav-msgs, rostest, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-trajectory-tracker";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/trajectory_tracker/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "4fbc1a1f8088e1798f2c265414a07faf70f0a4f2352dfdbe77e608e2c0bf76d6";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs interactive-markers tf2 neonavigation-common tf2-geometry-msgs eigen trajectory-tracker-msgs roscpp nav-msgs tf2-ros ];
  checkInputs = [ roslint rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers tf2 neonavigation-common tf2-geometry-msgs eigen trajectory-tracker-msgs roscpp nav-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Path following control package for wheeled mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
