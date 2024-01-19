
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, nav-msgs, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-viz";
  version = "0.21.3-r4";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_viz/0.21.3-4.tar.gz";
    name = "0.21.3-4.tar.gz";
    sha256 = "439f95a8031f2a92c5e55a62052ccf8c3c34caa274a3484851b827b9a884777c";
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
