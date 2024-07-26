
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, nav-msgs, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-viz";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_viz/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "8f4871d113ef4d85b8450ab9655351e4290ee5b4330a52572ea622ce3034b235";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs nav-msgs rtabmap-msgs rtabmap-sync std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "RTAB-Map's visualization package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
