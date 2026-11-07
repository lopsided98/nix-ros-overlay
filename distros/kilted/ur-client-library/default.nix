
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-kilted-ur-client-library";
  version = "2.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/kilted/ur_client_library/2.17.0-1.tar.gz";
    name = "2.17.0-1.tar.gz";
    sha256 = "1706dff138f9badc89cc41b9ac314608a454d0f22ea345f28e6d06828bd72341";
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
