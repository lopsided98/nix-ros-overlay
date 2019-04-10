
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-geometry-msgs, catkin, nav-msgs, roslaunch, roscpp, opencv3, rosunit, geometry-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-lunar-multirobot-map-merge";
  version = "2.1.1";

  src = fetchurl {
    url = https://github.com/hrnr/m-explore-release/archive/release/lunar/multirobot_map_merge/2.1.1-0.tar.gz;
    sha256 = "fdf2d7c8ec63691ec384b62f542ed53ddc47a8b4cbe2f92e46ced60e4e33b413";
  };

  buildInputs = [ nav-msgs tf2-geometry-msgs roscpp opencv3 geometry-msgs map-msgs ];
  checkInputs = [ roslaunch rosunit ];
  propagatedBuildInputs = [ nav-msgs tf2-geometry-msgs roscpp opencv3 geometry-msgs map-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Merging multiple maps without knowledge of initial
  positions of robots.'';
    #license = lib.licenses.BSD;
  };
}
