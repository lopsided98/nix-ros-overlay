
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, console-bridge }:
buildRosPackage {
  pname = "ros-foxy-ur-client-library";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/foxy/ur_client_library/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d460990dd5bd6786184e7bcdc90cc7f1d4bf64054fc4e47dbfb08f532d003667";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ ament-cmake console-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit ];
  };
}
