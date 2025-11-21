
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-kilted-tinyxml2-vendor";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/kilted/tinyxml2_vendor/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "7d0a684366ce704dd43f884e16d1a5871139c3d2bd9341cef5fd92bbf2b39c1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Wrapper around tinyxml2, providing nothing but a dependency on tinyxml2, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of tinyxml2.";
    license = with lib.licenses; [ asl20 ];
  };
}
