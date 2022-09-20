
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-foxy-ur-client-library";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/foxy/ur_client_library/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "00006ad8ff6811fa5eb16eda7804e0f5e9ab738622df47c8773cded95fe696e8";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit ];
  };
}
