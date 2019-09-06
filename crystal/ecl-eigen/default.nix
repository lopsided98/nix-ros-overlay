
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen, ament-cmake-ros }:
buildRosPackage {
  pname = "ros-crystal-ecl-eigen";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/crystal/ecl_eigen/1.0.1-0.tar.gz;
    sha256 = "e3f94550689bffd30ec975d5a94c4ac7b521da5f59e5e14b19b1728d0af9c3b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
