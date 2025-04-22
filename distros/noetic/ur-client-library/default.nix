
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-ur-client-library";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/noetic/ur_client_library/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "9a7443840ab356a1134a3c7616f727fbe3dee81a3aca676310d8f2b5e9983fc3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.";
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" ];
  };
}
