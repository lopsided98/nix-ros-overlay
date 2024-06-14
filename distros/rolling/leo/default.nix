
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-rolling-leo";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "aab425abb0c3df9586fa7461b40e168a30af8ff19b3f6d05fc628652adac02e0";
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
