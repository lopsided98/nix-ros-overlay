
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, elfutils }:
buildRosPackage {
  pname = "ros-jazzy-backward-ros";
  version = "1.0.2-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/backward_ros-release/archive/release/jazzy/backward_ros/1.0.2-6.tar.gz";
    name = "1.0.2-6.tar.gz";
    sha256 = "8988684b4d3c08a71288a394a9b9c0260d119214a68feb4cf7ee6d10aa939ff6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ elfutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp";
    license = with lib.licenses; [ mit ];
  };
}
