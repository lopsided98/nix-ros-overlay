
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-humble-leo-robot";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/leo_robot/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c996417ea50186864cda421c5ff5d3e947ea9ccf630b1f6ec1146234e8a99100";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo leo-bringup leo-fw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of software to install on Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
