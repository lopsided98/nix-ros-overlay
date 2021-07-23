
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, glfw3, pkg-config }:
buildRosPackage {
  pname = "ros-galactic-embree-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/embree_vendor-release/archive/release/galactic/embree_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "4728e8d270a86c188c40695ce56bf7fbae1eeaf2b8adb6112b6662883c7fd701";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ glfw3 pkg-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''vendor packages for intel raytracing kernel library'';
    license = with lib.licenses; [ asl20 ];
  };
}
