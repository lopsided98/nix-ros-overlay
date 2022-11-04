
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml }:
buildRosPackage {
  pname = "ros-foxy-tinyxml-vendor";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml_vendor-release/archive/release/foxy/tinyxml_vendor/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "01d4cb774b1cbac4cd414d9ca3c11f9b8bc6848902990f25689f9a62f05958c6";
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
