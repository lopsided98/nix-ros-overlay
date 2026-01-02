
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-jazzy-leo";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/jazzy/leo/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "8d4bb7674de79affe98f9827d351a333f021efd9b1386faacc85453f88a25307";
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
