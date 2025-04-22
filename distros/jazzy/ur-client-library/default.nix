
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-jazzy-ur-client-library";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/jazzy/ur_client_library/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "62d55fdc7c98d8fcb80d86455e194ab0b5665773a0195db3fc86539b05a93c87";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.";
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" ];
  };
}
