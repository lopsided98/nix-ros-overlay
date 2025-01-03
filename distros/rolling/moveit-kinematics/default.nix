
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, class-loader, eigen, generate-parameter-library, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-ros-planning, orocos-kdl-vendor, pluginlib, python3Packages, ros-testing, rsl, tf2, tf2-kdl, urdfdom }:
buildRosPackage {
  pname = "ros-rolling-moveit-kinematics";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_kinematics/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "a9968917ce4780d24e5b41895e6a568c68a5ccffea692d3dbdc265ef40aca911";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest launch-param-builder moveit-configs-utils moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config ros-testing ];
  propagatedBuildInputs = [ class-loader eigen generate-parameter-library moveit-common moveit-core moveit-msgs moveit-ros-planning orocos-kdl-vendor pluginlib python3Packages.lxml rsl tf2 tf2-kdl urdfdom ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for all inverse kinematics solvers in MoveIt";
    license = with lib.licenses; [ bsd3 ];
  };
}
