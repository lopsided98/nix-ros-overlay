
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, eigen }:
buildRosPackage {
  pname = "ros-foxy-ecl-eigen";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/ecl_eigen/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "c6fb8c638ad609f84ad0951c5095c36d016a058afce8dbdbb544d450b6ae96cb";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''This provides an Eigen implementation for ecl's linear algebra.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
