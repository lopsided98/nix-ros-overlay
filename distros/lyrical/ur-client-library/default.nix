
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-lyrical-ur-client-library";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/lyrical/ur_client_library/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "66d012c11ecd4d394923b4390457babb74e6572405b721a5f7d1f224737770cd";
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
