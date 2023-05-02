
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, moveit-resources-panda-moveit-config, moveit-setup-app-plugins, moveit-setup-controllers, moveit-setup-core-plugins, moveit-setup-framework, moveit-setup-srdf-plugins, pluginlib, qt5, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-moveit-setup-assistant";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_setup_assistant/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "f3c31e5831bf4c9d674cc49176ca778e53e15511db78b9bfa7f4a88c2d8afcc9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ ament-index-cpp moveit-setup-app-plugins moveit-setup-controllers moveit-setup-core-plugins moveit-setup-framework moveit-setup-srdf-plugins pluginlib qt5.qtbase rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt'';
    license = with lib.licenses; [ bsd3 ];
  };
}
