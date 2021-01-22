
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-errors, ecl-formatters, ecl-geometry, ecl-license, ecl-linear-algebra, ecl-math }:
buildRosPackage {
  pname = "ros-kinetic-ecl-mobile-robot";
  version = "0.60.3";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/kinetic/ecl_mobile_robot/0.60.3-0.tar.gz";
    name = "0.60.3-0.tar.gz";
    sha256 = "740992c6f2ec18390b8dd42b269049a9ae156534291a6708e435821a1ffcf200";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-errors ecl-formatters ecl-geometry ecl-license ecl-linear-algebra ecl-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains transforms (e.g. differential drive inverse kinematics)
    for the various types of mobile robot platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
