
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-lyrical-ur-client-library";
  version = "2.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/lyrical/ur_client_library/2.17.0-1.tar.gz";
    name = "2.17.0-1.tar.gz";
    sha256 = "9a6f4b0d9beafa8a7357cc7c8857b14a0569c2290d4e5ed06f34f3575cd85f3c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.";
    license = with lib.licenses; [ asl20 bsd2 zlib mit mit ];
  };
}
