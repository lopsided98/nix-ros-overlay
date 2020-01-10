
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-plansys2-pddl-parser";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/eloquent/plansys2_pddl_parser/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "320c9a01cdf04056959d8f07c2a3bb95d37cc0224fb770fe97879736c840f902";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package contains a library for parsing PDDL domains and problems.
  
    This package derives from the work of Anders Jonsson, contained in https://github.com/wisdompoet/universal-pddl-parser.git
    with many modifications by Francisco Martin:
      * ROS2 packaging
      * Source code structure refactor
      * CMakeLists.txt for cmake compilation
      * Reading from String instead of files
      * Licensing'';
    license = with lib.licenses; [ asl20 ];
  };
}
