
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package }:
buildRosPackage {
  pname = "ros-jazzy-ortools-vendor";
  version = "9.9.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ortools_vendor-release/archive/release/jazzy/ortools_vendor/9.9.0-5.tar.gz";
    name = "9.9.0-5.tar.gz";
    sha256 = "9cf166be59f9b8550937ec4dc45fe5a704be0195f94b47e4e6969c97bca4eadc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around ortools, it provides a fixed CMake module and an ExternalProject build of it.";
    license = with lib.licenses; [ asl20 ];
  };
}
