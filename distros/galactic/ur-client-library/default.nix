
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-galactic-ur-client-library";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/galactic/ur_client_library/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "0c1efadbe38fd93622774f1c79dd7bb2dfe8b29b743dcf318400bb6025514e83";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit ];
  };
}
