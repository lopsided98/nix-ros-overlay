
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-rolling-leo";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "55e396fa7b0b95b8dbd55e04c0d39351385d9cde4db1a2bb2c8f4f19c1f2ea5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ leo-description leo-msgs leo-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of software for Leo Rover common to the robot and ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
