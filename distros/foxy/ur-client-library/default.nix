
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, console-bridge }:
buildRosPackage {
  pname = "ros-foxy-ur-client-library";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/foxy/ur_client_library/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "939c992144de23c1ac4ac5d8cde6a12fef01c8cca515e8eebf90355a376dc15d";
  };

  buildType = "cmake";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ ament-cmake console-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 bsd2 "Zlib" mit ];
  };
}
