
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, libyamlcpp, moveit-common, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-visualization, ogre1_9, ompl, rclcpp, srdfdom, urdf, xacro }:
buildRosPackage {
  pname = "ros-galactic-moveit-setup-assistant";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_setup_assistant/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "132bee5b1c92fb0cc89bb0aec3f74c446f3883ea1bb1272f7279f33a48dd68e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ogre1_9 ompl ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common moveit-resources-panda-moveit-config ];
  propagatedBuildInputs = [ ament-index-cpp libyamlcpp moveit-core moveit-ros-planning moveit-ros-visualization rclcpp srdfdom urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
