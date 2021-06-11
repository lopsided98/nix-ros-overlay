
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, console-bridge }:
buildRosPackage {
  pname = "ros-melodic-ur-client-library";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/melodic/ur_client_library/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "2453f6de7998ffac0b6c05d404540b56548fb4ca4929f30edc6216ff23444f4f";
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
