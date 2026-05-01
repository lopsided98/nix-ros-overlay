
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-tinyxml2-vendor";
  version = "0.11.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/lyrical/tinyxml2_vendor/0.11.3-3.tar.gz";
    name = "0.11.3-3.tar.gz";
    sha256 = "44d37d4eadac59845419ab943f854de21ad00358d5e2a19f4d2ecc902c99034b";
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
