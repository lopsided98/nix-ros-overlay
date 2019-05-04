
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosunit, roslint }:
buildRosPackage {
  pname = "ros-kinetic-nav-grid";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_grid/0.2.5-0.tar.gz;
    sha256 = "ab3bcc87ca807d97728d4148220feded4eb4e0c1c9270eabc12389078fb1bf4a";
  };

  checkInputs = [ rosunit roslint ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A templatized interface for overlaying a two dimensional grid on the world.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
