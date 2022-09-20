
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-geometry, map-msgs, nav-msgs, roscpp, roslaunch, rosunit, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-multirobot-map-merge";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/hrnr/m-explore-release/archive/release/melodic/multirobot_map_merge/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "71f20bdcdabd059e615549ff71a6706b5a2ebff64d99d14d74a62400f44e9d9b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ geometry-msgs image-geometry map-msgs nav-msgs roscpp tf2-geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Merging multiple maps without knowledge of initial
  positions of robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
