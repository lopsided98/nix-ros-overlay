
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, plansys2-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-humble-plansys2-pddl-parser";
  version = "2.0.9-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/humble/plansys2_pddl_parser/2.0.9-1.tar.gz";
    name = "2.0.9-1.tar.gz";
    sha256 = "1267fa667dae732ae36a8ffbae96a94fad768143a2f650f049dc34ae601dde32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs rclcpp std-msgs ];
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
