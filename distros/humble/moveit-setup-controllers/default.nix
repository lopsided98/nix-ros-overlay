
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-clang-format, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-index-cpp, ament-lint-auto, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-setup-framework, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-moveit-setup-controllers";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_setup_controllers/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "c311611f974dce1e6405d44196e271cb47f127da8f19ab92318424bd8d84b8fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-clang-format ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ ament-index-cpp moveit-setup-framework pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''MoveIt Setup Steps for ROS 2 Control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
