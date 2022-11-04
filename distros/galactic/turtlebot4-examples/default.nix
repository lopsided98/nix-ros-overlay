
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-cpp-examples, turtlebot4-python-examples }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-examples";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_examples-release/archive/release/galactic/turtlebot4_examples/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "867fd109cd494bb11b8565e6e20f975274160feeb0506e37fb976b3b16a009b6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ turtlebot4-cpp-examples turtlebot4-python-examples ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Examples Metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
