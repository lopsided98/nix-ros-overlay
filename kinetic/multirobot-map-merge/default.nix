
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, nav-msgs, roslaunch, roscpp, opencv3, rosunit, geometry-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-multirobot-map-merge";
  version = "2.1.1";

  src = fetchurl {
    url = https://github.com/hrnr/m-explore-release/archive/release/kinetic/multirobot_map_merge/2.1.1-0.tar.gz;
    sha256 = "df9d13dc9aeb42feb2562689ce1fc9da1e99c3ace61d92fbe2be10d914bd6bda";
  };

  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ nav-msgs tf2-geometry-msgs roscpp opencv3 geometry-msgs map-msgs ];
  nativeBuildInputs = [ nav-msgs tf2-geometry-msgs catkin roscpp opencv3 geometry-msgs map-msgs ];

  meta = {
    description = ''Merging multiple maps without knowledge of initial
  positions of robots.'';
    #license = lib.licenses.BSD;
  };
}
