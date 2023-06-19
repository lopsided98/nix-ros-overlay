
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-iron-ur-client-library";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_Client_Library-release/archive/release/iron/ur_client_library/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "bcfc99c3e423e7caa82beb06e58dbe03452098c116f3be35c68b071562de21aa";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" ];
  };
}
