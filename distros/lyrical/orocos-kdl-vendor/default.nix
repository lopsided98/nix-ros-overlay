
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, orocos-kdl }:
buildRosPackage {
  pname = "ros-lyrical-orocos-kdl-vendor";
  version = "0.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orocos_kdl_vendor-release/archive/release/lyrical/orocos_kdl_vendor/0.8.0-3.tar.gz";
    name = "0.8.0-3.tar.gz";
    sha256 = "439dc30e142ee4d6d1f8e07acd3ad311f74e9b39e5c0ff247cdf1382cb58c425";
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
