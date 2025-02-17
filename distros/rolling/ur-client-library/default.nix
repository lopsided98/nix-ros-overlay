
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-rolling-ur-client-library";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/rolling/ur_client_library/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "1342ea8513e80e5ac898c074e156c4b4a095f377ef990d194b03a71e06b6d699";
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
