
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git }:
buildRosPackage {
  pname = "ros-jazzy-boost-sml-vendor";
  version = "1.1.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_sml_vendor-release/archive/release/jazzy/boost_sml_vendor/1.1.11-1.tar.gz";
    name = "1.1.11-1.tar.gz";
    sha256 = "75f2dbe565b36b8d9012878e4bf8f318a15ae6e9b42c84cb754a1d599219fe2c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for the Boost SML (State Machine Language)";
    license = with lib.licenses; [ mit "BSL-1.0" ];
  };
}
