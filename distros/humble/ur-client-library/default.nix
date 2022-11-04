
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-humble-ur-client-library";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/humble/ur_client_library/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "089f6f9d5bc0b3951d212e980a2cb90fb2a0027f715988ba437d5da31997b21e";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit ];
  };
}
