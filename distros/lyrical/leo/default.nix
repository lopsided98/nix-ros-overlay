
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-lyrical-leo";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/lyrical/leo/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "0c68cfa903a28ee99a77b20c0db98de914538528994e68d0a5e9eb4d16bf4206";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage of software for Leo Rover common to the robot and ROS desktop";
    license = with lib.licenses; [ mit ];
  };
}
