
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-ur-client-library";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/noetic/ur_client_library/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "6f9c192347629ff1ca6c051954d9300bc12f4fee14b5af8da381d54c325d0c40";
  };

  buildType = "cmake";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Standalone C++ library for accessing Universal Robots interfaces. This has been forked off the ur_robot_driver.'';
    license = with lib.licenses; [ asl20 "BSD-2-Clause" "Zlib" mit ];
  };
}
