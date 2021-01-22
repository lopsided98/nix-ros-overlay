
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, glfw3, tbb }:
buildRosPackage {
  pname = "ros-foxy-embree-vendor";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/embree_vendor-release/archive/release/foxy/embree_vendor/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "257441ebdfee6bc9133e5ebb7bc938b57e8da236b0a1224e5f1b544164c0d120";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ glfw3 tbb ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''vendor packages for intel raytracing kernel library'';
    license = with lib.licenses; [ asl20 ];
  };
}
