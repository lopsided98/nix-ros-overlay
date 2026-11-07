
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-plansys2-pddl-parser";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/humble/plansys2_pddl_parser/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "b929ed9a1071b66368b4394cd5b961d9ea40ba1aa29d7a9012fb0618bcea04f8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common rclcpp ];
  propagatedBuildInputs = [ plansys2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains a library for parsing PDDL domains and problems.
  
    This package derives from the work of Anders Jonsson, contained in https://github.com/wisdompoet/universal-pddl-parser.git
    with many modifications by Francisco Martin:
      * ROS2 packaging
      * Source code structure refactor
      * CMakeLists.txt for cmake compilation
      * Reading from String instead of files
      * Licensing";
    license = with lib.licenses; [ asl20 ];
  };
}
