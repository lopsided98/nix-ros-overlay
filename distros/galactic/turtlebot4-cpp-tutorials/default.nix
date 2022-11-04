
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-cpp-tutorials";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/galactic/turtlebot4_cpp_tutorials/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "572803c0a28a8eb86a857995dd7fbce8c13c37ebecfeb94e823c8e97ecba9796";
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
