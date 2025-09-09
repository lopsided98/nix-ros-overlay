
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, assimp, boost, bullet, eigen, fcl, fmt, libccd, lz4, octomap, ode, tinyxml-2, urdfdom }:
buildRosPackage {
  pname = "ros-kilted-gz-dartsim-vendor";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_dartsim_vendor-release/archive/release/kilted/gz_dartsim_vendor/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "a2da6da2a5b7f3453f258b157fd5d55edf8d05f051a62ede30746b326eff33ce";
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
