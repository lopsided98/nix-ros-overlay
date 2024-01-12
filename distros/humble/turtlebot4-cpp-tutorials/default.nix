
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-cpp-tutorials";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/humble/turtlebot4_cpp_tutorials/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "7c5fb49b3425499b092718cef4e0ec8742f461daca4f2acace0bbc12ed316c1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TurtleBot 4 C++ Tutorials'';
    license = with lib.licenses; [ asl20 ];
  };
}
