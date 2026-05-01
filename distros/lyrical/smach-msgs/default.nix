
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-smach-msgs";
  version = "3.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/lyrical/smach_msgs/3.0.3-4.tar.gz";
    name = "3.0.3-4.tar.gz";
    sha256 = "b381446aeb67280b1dabee889dde772bed0f7a8b5820b3e196846c56863cb8b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-pep257 rosidl-default-generators ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-uncrustify ament-lint ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-pep257 rosidl-default-generators ];

  meta = {
    description = "this package contains a set of messages that are used by the introspection
    interfaces for smach.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
