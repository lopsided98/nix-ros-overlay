
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, assimp, boost, bullet, eigen, fcl, fmt, libccd, lz4, octomap, ode, tinyxml-2, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-gz-dartsim-vendor";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_dartsim_vendor-release/archive/release/rolling/gz_dartsim_vendor/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "c8b93c59676cda0f26c091485249484c633d413d760440bef592cd4ec23ec581";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ assimp boost bullet eigen fcl fmt libccd lz4 octomap ode tinyxml-2 urdfdom ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for the DART physics engine v6.16.6";
    license = with lib.licenses; [ asl20 bsd2 ];
  };
}
