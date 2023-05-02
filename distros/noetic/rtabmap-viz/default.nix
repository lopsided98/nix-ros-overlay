
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, nav-msgs, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-viz";
  version = "0.21.1-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_viz/0.21.1-4.tar.gz";
    name = "0.21.1-4.tar.gz";
    sha256 = "17c2697df366e3b70bd90c47f6d194b235cb155c28a9d7e2d0ceb9f1beff3b21";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs nav-msgs rtabmap-msgs rtabmap-sync std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RTAB-Map's visualization package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
