
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, console-bridge }:
buildRosPackage {
  pname = "ros-galactic-ur-client-library";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/galactic/ur_client_library/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "b3378b1cfc4478adc8dc336d75c18d547d8ded7fbea268d013e9741e73d01f35";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ ament-cmake console-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit ];
  };
}
