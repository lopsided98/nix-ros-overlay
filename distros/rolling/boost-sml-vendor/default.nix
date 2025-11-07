
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git }:
buildRosPackage {
  pname = "ros-rolling-boost-sml-vendor";
  version = "1.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_sml_vendor-release/archive/release/rolling/boost_sml_vendor/1.1.12-1.tar.gz";
    name = "1.1.12-1.tar.gz";
    sha256 = "56ce8c0216e77dfb61bf34d769069826568ea85f41de6c12a1489c6513676363";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for the Boost SML (State Machine Language)";
    license = with lib.licenses; [ mit "BSL-1.0" ];
  };
}
