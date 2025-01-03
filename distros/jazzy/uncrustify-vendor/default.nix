
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, uncrustify }:
buildRosPackage {
  pname = "ros-jazzy-uncrustify-vendor";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/uncrustify_vendor-release/archive/release/jazzy/uncrustify_vendor/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "96f2759cb3039bb3600f6cd6c359ab01c9ed38c7065169f7ea02088ef3da7a49";
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
