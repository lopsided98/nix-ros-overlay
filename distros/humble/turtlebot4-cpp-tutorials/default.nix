
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-cpp-tutorials";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_tutorials-release/archive/release/humble/turtlebot4_cpp_tutorials/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "47e7b6c05c52b9569cac74bd8fc59a306e4ee4100d5a1ab580fa62317169ded7";
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
