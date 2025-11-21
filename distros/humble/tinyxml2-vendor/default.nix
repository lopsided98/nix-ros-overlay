
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-humble-tinyxml2-vendor";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/humble/tinyxml2_vendor/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "9c5d108bfeefde012667b2bb4d078c72901ddd993db1e177ecf15cddd3f5215a";
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
