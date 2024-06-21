
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-ur-client-library";
  version = "1.3.7-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/noetic/ur_client_library/1.3.7-1.tar.gz";
    name = "1.3.7-1.tar.gz";
    sha256 = "b46bd5ed9e389b935a98c24ee30baa38ee900c9fa1e4ab84ab6c23c0ea25291b";
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
