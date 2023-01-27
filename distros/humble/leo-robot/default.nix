
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo, leo-bringup, leo-fw }:
buildRosPackage {
  pname = "ros-humble-leo-robot";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_robot-release/archive/release/humble/leo_robot/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "88a00c5295ab43d67189911f19598912a2990bf968c60d99c3ba8cb341e04111";
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
