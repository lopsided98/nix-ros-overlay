
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-ur-client-library";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_Client_Library-release/archive/release/melodic/ur_client_library/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "29497a3ff70d55204b766fe83f554492429979273e168e6e73b8a85bd9c1f4d1";
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
