
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gfortran, git, ipopt, liblapack, pkg-config }:
buildRosPackage {
  pname = "ros-foxy-casadi-vendor";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/autowarefoundation/autoware.auto/casadi_vendor-release/-/archive/release/foxy/casadi_vendor/3.5.1-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "8f3d2f841b40e4a2ce42e6a582b8e4955eee33d61ce732747bd64fdfc3f2f2bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gfortran git ipopt liblapack pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around CasADi to make it available to the ROS ecosystem.'';
    license = with lib.licenses; [ asl20 "LGPL" ];
  };
}
