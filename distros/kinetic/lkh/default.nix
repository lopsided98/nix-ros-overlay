
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, glkh-solver, lkh-solver }:
buildRosPackage {
  pname = "ros-kinetic-lkh";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/crigroup/lkh-release/archive/release/kinetic/lkh/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "19d10be393136d552d8d4ff8160ea94cd97d85ea2482716b02c3831ed551d575";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ glkh-solver lkh-solver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS packages for solving the TSP and GTSP problems using LKH heuristic'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
