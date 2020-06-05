
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslint, rosunit }:
buildRosPackage {
  pname = "ros-noetic-nav-grid";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/nav_grid/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "a049756b3632aeb57553c441653ee75621d4f02fc748b640a064bc6b8237f336";
  };

  buildType = "catkin";
  checkInputs = [ roslint rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A templatized interface for overlaying a two dimensional grid on the world.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
