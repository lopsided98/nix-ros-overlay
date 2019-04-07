
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-kinetic-ecl-eigen";
  version = "0.61.17";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/kinetic/ecl_eigen/0.61.17-0.tar.gz;
    sha256 = "013625037effc50a076e804e48e171e0db6c63a2bb92c2822ba34a387caa7f48";
  };

  buildInputs = [ ecl-license cmake-modules eigen ];
  propagatedBuildInputs = [ ecl-license eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    #license = lib.licenses.BSD;
  };
}
