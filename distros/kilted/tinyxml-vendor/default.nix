
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-kilted-tinyxml-vendor";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/kilted/tinyxml_vendor/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "41ef0aebcef68129544a59a4da001266e1f53d902dda02ab0a59bca40aaef408";
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
