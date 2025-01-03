
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, orocos-kdl }:
buildRosPackage {
  pname = "ros-jazzy-orocos-kdl-vendor";
  version = "0.5.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/jazzy/orocos_kdl_vendor/0.5.1-2.tar.gz";
    name = "0.5.1-2.tar.gz";
    sha256 = "aa687a98ccbabde2c206442fbdfc7794fb06e41a9c383fcfa9ea65f5c4b72ab8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module orocos-kdl ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around orocos_kdl, providing nothing but a dependency on orocos_kdl on some systems.
    On others, it fetches and builds orocos_kdl locally.";
    license = with lib.licenses; [ asl20 "LGPL-2.1-or-later" ];
  };
}
