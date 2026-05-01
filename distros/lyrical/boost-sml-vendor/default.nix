
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git }:
buildRosPackage {
  pname = "ros-lyrical-boost-sml-vendor";
  version = "1.1.13-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_sml_vendor-release/archive/release/lyrical/boost_sml_vendor/1.1.13-3.tar.gz";
    name = "1.1.13-3.tar.gz";
    sha256 = "e2c2283685cadfa1a13a1c2f277dc5497b234c6faf685ce936327b4e61e11b7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for the Boost SML (State Machine Language)";
    license = with lib.licenses; [ mit "BSL-1.0" ];
  };
}
