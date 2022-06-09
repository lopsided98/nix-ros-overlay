
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, libyamlcpp, moveit-common, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-visualization, ompl, rclcpp, srdfdom, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-moveit-setup-assistant";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_setup_assistant/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "c3891cd13211e189c94d49b7b27e91ebca0cd121e224bd6a82e92a377b32cb47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ompl ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ ament-index-cpp libyamlcpp moveit-common moveit-core moveit-ros-planning moveit-ros-visualization rclcpp srdfdom urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
