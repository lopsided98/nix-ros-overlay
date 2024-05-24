
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-jazzy-tinyxml-vendor";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/jazzy/tinyxml_vendor/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "5825bad34e4423f526ea2d136f434888bb82e85f9c4f382e7d799d738b5524f1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake shim over the tinxml library.";
    license = with lib.licenses; [ asl20 ];
  };
}
