
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen, geometry-msgs, interactive-markers, nav-msgs, neonavigation-common, roscpp, roslint, rostest, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-melodic-trajectory-tracker";
  version = "0.12.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/trajectory_tracker/0.12.0-1.tar.gz";
    name = "0.12.0-1.tar.gz";
    sha256 = "3708b1a834e70e8500b41ffff3c2a16fe85e3838d9ae286b84988a9565f1fe46";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure eigen geometry-msgs interactive-markers nav-msgs neonavigation-common roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Path following control package for wheeled mobile robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
