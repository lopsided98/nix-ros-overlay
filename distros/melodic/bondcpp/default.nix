
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bond, boost, catkin, cmake-modules, roscpp, smclib, util-linux }:
buildRosPackage {
  pname = "ros-melodic-bondcpp";
  version = "1.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/bond_core-release/archive/release/melodic/bondcpp/1.8.5-1.tar.gz";
    name = "1.8.5-1.tar.gz";
    sha256 = "f889b4bbeb494215d8ea3aba0080c775a87bce44e94fc184b3359c39874a0968";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ bond boost roscpp smclib util-linux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ implementation of bond, a mechanism for checking when
    another process has terminated.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
