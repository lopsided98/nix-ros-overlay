
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-lyrical-ur-client-library";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/lyrical/ur_client_library/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "f5ca9bbd946c19b04d45fd0c14c76a49d0d0978ad3a6e54c5ab84ebdc3c8b12a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.";
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit mit ];
  };
}
