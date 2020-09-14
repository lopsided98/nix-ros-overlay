
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-foxy-ecl-eigen";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_eigen/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "51a398c190d2df73d0274c1c10c2cd7959bc63baddeab9613d3ae4507afeda3a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
