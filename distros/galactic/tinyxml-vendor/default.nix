
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-galactic-tinyxml-vendor";
  version = "0.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/galactic/tinyxml_vendor/0.8.2-2.tar.gz";
    name = "0.8.2-2.tar.gz";
    sha256 = "61582cf218208ba794d93713fa6418f35fcc44cf599169a031fc742d000f9e09";
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
