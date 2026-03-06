
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git }:
buildRosPackage {
  pname = "ros-jazzy-boost-sml-vendor";
  version = "1.1.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_sml_vendor-release/archive/release/jazzy/boost_sml_vendor/1.1.13-1.tar.gz";
    name = "1.1.13-1.tar.gz";
    sha256 = "1c52b0c5d3fe96458b821d7853483d032a5309f6d5e110864e26e2b7059ad740";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for the Boost SML (State Machine Language)";
    license = with lib.licenses; [ mit "BSL-1.0" ];
  };
}
