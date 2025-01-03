
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, nav-msgs, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-viz";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_viz/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "c6b9eccf438c5b609f01cfa2e716119c10eaffeb2c09bee963e15e2773a5554e";
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
