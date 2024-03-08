
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-rolling-leo";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "4b4772b9a1345f3629c7af894ef2d25a9cb5a351274d166091e2faa12a00d20d";
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
