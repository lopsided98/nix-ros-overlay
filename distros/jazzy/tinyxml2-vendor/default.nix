
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-tinyxml2-vendor";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/jazzy/tinyxml2_vendor/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "6cfb0693ae16ecb540679a571c0c121a2dea855b8b3944051dc8bc0df510dd80";
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
