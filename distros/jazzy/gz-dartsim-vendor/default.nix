
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, assimp, boost, bullet, eigen, fcl, fmt, libccd, lz4, ode, tinyxml-2, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-gz-dartsim-vendor";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_dartsim_vendor-release/archive/release/jazzy/gz_dartsim_vendor/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "d70cac8761441561bbdf57471133fb93aed3847db5a4e19bdac70a241e3fadb5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ assimp boost bullet eigen fcl fmt libccd lz4 ode tinyxml-2 urdfdom ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for the DART physics engine v6.13.2";
    license = with lib.licenses; [ asl20 bsd2 ];
  };
}
