
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, image-geometry, map-msgs, nav-msgs, roscpp, roslaunch, rosunit, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-noetic-multirobot-map-merge";
  version = "2.1.4-r1";

  src = fetchurl {
    url = "https://github.com/hrnr/m-explore-release/archive/release/noetic/multirobot_map_merge/2.1.4-1.tar.gz";
    name = "2.1.4-1.tar.gz";
    sha256 = "6e17c3b65acc6daa656045525b6dda26a0893326d7c1dc1a0952bc0f81f0aab6";
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
