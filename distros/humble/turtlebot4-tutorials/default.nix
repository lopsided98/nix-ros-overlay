
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-cpp-tutorials, turtlebot4-python-tutorials }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-tutorials";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/humble/turtlebot4_tutorials/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "fd4ec5f49c48af12ba3cc6f76472907791d95b3e29ce6ae32eb3bec2d3097f76";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-cpp-tutorials turtlebot4-python-tutorials ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Tutorials Metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
