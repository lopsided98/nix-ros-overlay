
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-rolling-tinyxml-vendor";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/rolling/tinyxml_vendor/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "774b991dfb2b24f291f44ea50336052ae80a0661e165928b1425e002818a81c5";
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
