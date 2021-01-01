
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tinyxml-2 }:
buildRosPackage {
  pname = "ros-foxy-tinyxml2-vendor";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyxml2_vendor-release/archive/release/foxy/tinyxml2_vendor/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "47b312fe3dbc2b5f069437c90e1fdfac96ae13e864445978f23f02f4e696f9db";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around tinyxml2, providing nothing but a dependency on tinyxml2, on some systems.
    On others, it provides a fixed CMake module or even an ExternalProject build of tinyxml2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
