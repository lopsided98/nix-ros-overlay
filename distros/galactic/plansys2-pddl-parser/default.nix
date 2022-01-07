
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, plansys2-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-plansys2-pddl-parser";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/galactic/plansys2_pddl_parser/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "5b8173f01fbf026a608db04c72fb166a4028bada383c4ef4f961c3761722df2d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ plansys2-msgs std-msgs ];
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
