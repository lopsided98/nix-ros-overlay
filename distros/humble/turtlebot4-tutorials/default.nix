
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, turtlebot4-cpp-tutorials, turtlebot4-python-tutorials }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-tutorials";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/humble/turtlebot4_tutorials/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "529b215dddfeb2a9ea8438d5bc581b025077d815bea33d6ebcabab36cc675c3f";
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
