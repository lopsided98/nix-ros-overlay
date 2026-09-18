
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-humble-ur-client-library";
  version = "2.15.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/humble/ur_client_library/2.15.2-3.tar.gz";
    name = "2.15.2-3.tar.gz";
    sha256 = "6855fd24c9a52fc50af77685a0cfcf6cf5b7d783b053403da74ba93b92570497";
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
