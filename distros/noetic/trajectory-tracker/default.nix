
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen, geometry-msgs, interactive-markers, nav-msgs, neonavigation-common, roscpp, roslint, rostest, std-srvs, tf2, tf2-geometry-msgs, tf2-ros, trajectory-tracker-msgs }:
buildRosPackage {
  pname = "ros-noetic-trajectory-tracker";
  version = "0.17.5-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/trajectory_tracker/0.17.5-1.tar.gz";
    name = "0.17.5-1.tar.gz";
    sha256 = "07d7d4eba4f5fddcb2f21fcd641ca14a28d20da570a354fd195861721f419184";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure eigen geometry-msgs interactive-markers nav-msgs neonavigation-common roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros trajectory-tracker-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Path following control package for wheeled mobile robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
