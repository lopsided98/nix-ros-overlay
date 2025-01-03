
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-humble-leo";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/humble/leo/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "db9463ea2c575db337d4317928b1bea25155b7d89c8665b3f74b3df03d444e97";
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
