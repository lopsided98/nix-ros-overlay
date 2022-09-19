
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, console-bridge }:
buildRosPackage {
  pname = "ros-humble-ur-client-library";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/humble/ur_client_library/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "68c38700d498e81e9f4dcfe757fba25f31b31f06849ad865f8ad27b2ca4d5538";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake console-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit ];
  };
}
