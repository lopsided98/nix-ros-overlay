
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-cpp-tutorials, turtlebot4-python-tutorials }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-tutorials";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/galactic/turtlebot4_tutorials/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "86355a008e9770d3c913763e47709748be38fd023105d9edf574d1cf11ef8c9a";
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
