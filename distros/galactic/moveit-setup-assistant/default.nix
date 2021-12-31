
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, libyamlcpp, moveit-common, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-visualization, ogre1_9, ompl, rclcpp, srdfdom, urdf, xacro }:
buildRosPackage {
  pname = "ros-galactic-moveit-setup-assistant";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/moveit_setup_assistant/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "cac1109f9eeff95cb9926588fc85610a4129f0efd90eb9203bd3c86639f93a82";
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
