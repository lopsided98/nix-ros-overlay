
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, leo-description, leo-msgs, leo-teleop }:
buildRosPackage {
  pname = "ros-rolling-leo";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "5b0b65fe1dc30706001f912232fd45a677f9104832ca2384aedb6a5d5cb94cd5";
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
