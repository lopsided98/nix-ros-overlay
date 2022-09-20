
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-galactic-tinyxml2-vendor";
  version = "0.7.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/galactic/tinyxml2_vendor/0.7.4-2.tar.gz";
    name = "0.7.4-2.tar.gz";
    sha256 = "3b7d683f30fe8439ee2a45d9e4def038f11739cf331b24b0bb882d0f32910c9e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around tinyxml2, providing nothing but a dependency on tinyxml2, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of tinyxml2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
