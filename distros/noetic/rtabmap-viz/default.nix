
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, geometry-msgs, nav-msgs, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-rtabmap-viz";
  version = "0.21.4-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/noetic/rtabmap_viz/0.21.4-1.tar.gz";
    name = "0.21.4-1.tar.gz";
    sha256 = "04725621be9bd8eeca03690420c059e76b405bef68755bcb55fdffe0b449df12";
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
