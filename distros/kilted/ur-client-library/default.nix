
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-kilted-ur-client-library";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/kilted/ur_client_library/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "26cb7f9a9191d14201d34aac2af62da9c1705e1ce1a7bca4d61114d10de4fb93";
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
