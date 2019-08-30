
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen }:
buildRosPackage {
  pname = "ros-kinetic-hebi-cpp-api";
  version = "2.1.0-r1";

  src = fetchurl {
    url = https://github.com/HebiRobotics/hebi_cpp_api_ros-release/archive/release/kinetic/hebi_cpp_api/2.1.0-1.tar.gz;
    sha256 = "fe7ef6423758c42c99f08a47cb95f1cfea0c00d6f599dc3b7a28c291c62a4a10";
  };

  buildInputs = [ cmake-modules eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS package providing access to the HEBI C++ API.'';
    license = with lib.licenses; [ "HEBI C++ Software License (https://www.hebirobotics.com/softwarelicense)" ];
  };
}
