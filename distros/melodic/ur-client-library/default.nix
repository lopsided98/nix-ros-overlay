
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, console-bridge }:
buildRosPackage {
  pname = "ros-melodic-ur-client-library";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/melodic/ur_client_library/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "8cca441a3b463d919308266893d64a333bcf03447806f75b6d7209c218bef032";
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
