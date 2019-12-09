
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, map-msgs, catkin, roslaunch, rosunit, tf2-geometry-msgs, roscpp, nav-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-multirobot-map-merge";
  version = "2.1.1";

  src = fetchurl {
    url = "https://github.com/hrnr/m-explore-release/archive/release/kinetic/multirobot_map_merge/2.1.1-0.tar.gz";
    name = "2.1.1-0.tar.gz";
    sha256 = "df9d13dc9aeb42feb2562689ce1fc9da1e99c3ace61d92fbe2be10d914bd6bda";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs map-msgs roscpp tf2-geometry-msgs opencv3 nav-msgs ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ geometry-msgs map-msgs tf2-geometry-msgs roscpp nav-msgs opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Merging multiple maps without knowledge of initial
  positions of robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
