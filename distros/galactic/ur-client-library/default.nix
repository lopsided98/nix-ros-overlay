
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-galactic-ur-client-library";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/galactic/ur_client_library/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d6578b686f968452f71055cb9c20338d14a0f3cc3615e2a9b0b4527e8ab376f3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit ];
  };
}
