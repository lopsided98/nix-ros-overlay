
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, plansys2-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-plansys2-pddl-parser";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/foxy/plansys2_pddl_parser/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "4fc997f2e7242c21eaa1256424d0ee46227b8d41768a6d69c85586cd89cdd62f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
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
