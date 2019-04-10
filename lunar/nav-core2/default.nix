
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, nav-grid, catkin, nav-2d-msgs, tf, rosunit }:
buildRosPackage {
  pname = "ros-lunar-nav-core2";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/nav_core2/0.2.5-0.tar.gz;
    sha256 = "2b41e8635a17d61d543ce417df711248740bfffb2193214fe7a81fe4488f4cd5";
  };

  buildInputs = [ tf nav-2d-msgs nav-grid ];
  checkInputs = [ rosunit roslint ];
  propagatedBuildInputs = [ tf nav-2d-msgs nav-grid ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interfaces for Costmap, LocalPlanner and GlobalPlanner. Replaces nav_core.'';
    #license = lib.licenses.BSD;
  };
}
