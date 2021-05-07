
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, console-bridge }:
buildRosPackage {
  pname = "ros-noetic-ur-client-library";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/noetic/ur_client_library/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "e7eec06de67fc92fe275b5ac7b55e030acde82e40b683c8b9a9b7d51f7f76cc3";
  };

  buildType = "cmake";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ catkin console-bridge ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 bsd2 "Zlib" mit ];
  };
}
