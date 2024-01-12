
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-iron-tinyxml-vendor";
  version = "0.9.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/iron/tinyxml_vendor/0.9.2-3.tar.gz";
    name = "0.9.2-3.tar.gz";
    sha256 = "e29eb24ca6fd1c4e1bff5e6adbf96939b7400f7ad248fa601b6a96e3e852ba5b";
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
