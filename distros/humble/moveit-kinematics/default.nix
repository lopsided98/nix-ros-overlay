
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, class-loader, eigen, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-ros-planning, orocos-kdl-vendor, pluginlib, python3Packages, ros-testing, tf2, tf2-kdl, urdfdom }:
buildRosPackage {
  pname = "ros-humble-moveit-kinematics";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_kinematics/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "7c6260d40ec7e8c24de8ed87a2e9c99288b5ffa1641f63b8fdf64a356d2f0c1a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common launch-param-builder moveit-configs-utils moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-ros-planning ros-testing ];
  propagatedBuildInputs = [ class-loader eigen moveit-common moveit-core moveit-msgs orocos-kdl-vendor pluginlib python3Packages.lxml tf2 tf2-kdl urdfdom ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package for all inverse kinematics solvers in MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
