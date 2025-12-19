
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-plansys2-pddl-parser";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_planning_system-release/archive/release/kilted/plansys2_pddl_parser/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "77817137578b82eb2696b0d8fdb82be63d90d48993f66a528f7c48daf301115a";
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
