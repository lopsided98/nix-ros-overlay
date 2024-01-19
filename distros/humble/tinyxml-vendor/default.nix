
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-humble-tinyxml-vendor";
  version = "0.8.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/humble/tinyxml_vendor/0.8.3-2.tar.gz";
    name = "0.8.3-2.tar.gz";
    sha256 = "a3568b28e4dae03b9bb4793b2dd5377d5be556d941ccce57c21838fb1fbb129c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''CMake shim over the tinxml library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
