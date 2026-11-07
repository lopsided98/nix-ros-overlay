
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-plansys2-pddl-parser";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/lyrical/plansys2_pddl_parser/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "d373127cd7b43de2550ba563e68b5c284b38c275a362856edd9ede6e5ba833a3";
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
