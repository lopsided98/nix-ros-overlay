
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, class-loader, eigen, generate-parameter-library, launch-param-builder, moveit-common, moveit-configs-utils, moveit-core, moveit-msgs, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-ros-planning, orocos-kdl-vendor, pluginlib, python3Packages, ros-testing, rsl, tf2, tf2-kdl, urdfdom }:
buildRosPackage {
  pname = "ros-jazzy-moveit-kinematics";
  version = "2.12.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/jazzy/moveit_kinematics/2.12.3-1.tar.gz";
    name = "2.12.3-1.tar.gz";
    sha256 = "6222c520bb5e7a9437076782b7eb4e38658eb41aa708c59858a47600cff30309";
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
