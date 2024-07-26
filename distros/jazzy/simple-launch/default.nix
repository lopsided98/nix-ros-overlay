
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-jazzy-simple-launch";
  version = "1.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/simple_launch-release/archive/release/jazzy/simple_launch/1.10.1-1.tar.gz";
    name = "1.10.1-1.tar.gz";
    sha256 = "749bcc5bd434ae454981638f2e99ff8146f895d0a01842f03b8c2f2920741472";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];
  nativeBuildInputs = [ ament-cmake-python ];

  meta = {
    description = "Python helper class for the ROS 2 launch system";
    license = with lib.licenses; [ mit ];
  };
}
