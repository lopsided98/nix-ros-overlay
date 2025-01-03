
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, assimp, boost, bullet, eigen, fcl, fmt, libccd, lz4, octomap, ode, tinyxml-2, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-gz-dartsim-vendor";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_dartsim_vendor-release/archive/release/rolling/gz_dartsim_vendor/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "50e76ad9f990ca6c81e2b8c015fc8e00c79af5c4fefc549ab6f0d10abbb24ba0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ assimp boost bullet eigen fcl fmt libccd lz4 octomap ode tinyxml-2 urdfdom ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for the DART physics engine v6.13.2";
    license = with lib.licenses; [ asl20 bsd2 ];
  };
}
