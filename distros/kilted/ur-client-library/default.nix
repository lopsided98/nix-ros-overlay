
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-kilted-ur-client-library";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/kilted/ur_client_library/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "0a19ae011056e67e2b203533bd4dbe5dd2c993416a07c4e3847e7c587ceb2a25";
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
