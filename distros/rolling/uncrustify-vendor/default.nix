
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, uncrustify }:
buildRosPackage {
  pname = "ros-rolling-uncrustify-vendor";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/rolling/uncrustify_vendor/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "59920b87465fa90c05b5c8b4a9565748e5482dae080832b9eaccca5a90dfe346";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ uncrustify ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around uncrustify, providing nothing but a dependency on uncrustify, on some systems.
    On others, it provides an ExternalProject build of uncrustify.";
    license = with lib.licenses; [ asl20 "GPL-2.0-only" ];
  };
}
