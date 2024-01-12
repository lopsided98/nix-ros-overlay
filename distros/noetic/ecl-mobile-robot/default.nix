
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-errors, ecl-formatters, ecl-geometry, ecl-license, ecl-linear-algebra, ecl-math }:
buildRosPackage {
  pname = "ros-noetic-ecl-mobile-robot";
  version = "0.60.3-r2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/noetic/ecl_mobile_robot/0.60.3-2.tar.gz";
    name = "0.60.3-2.tar.gz";
    sha256 = "bfd9dd999ab1344955ad66705249d1a109700da5fb80fddb6fc2d09e232d0ca2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-errors ecl-formatters ecl-geometry ecl-license ecl-linear-algebra ecl-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains transforms (e.g. differential drive inverse kinematics)
    for the various types of mobile robot platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
