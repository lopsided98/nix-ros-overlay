
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-rolling-tinyxml-vendor";
  version = "0.10.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/rolling/tinyxml_vendor/0.10.0-2.tar.gz";
    name = "0.10.0-2.tar.gz";
    sha256 = "94bdc157affa92d5106a492919ac69b65a69d563ac9de9870f006749a62c5a92";
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
