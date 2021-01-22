
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, console-bridge }:
buildRosPackage {
  pname = "ros-melodic-ur-client-library";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/melodic/ur_client_library/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "73799aade33baff806b0ce765299351fcdebb9e35f7d12f73024de65f108517f";
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
