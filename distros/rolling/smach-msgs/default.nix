
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-smach-msgs";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/rolling/smach_msgs/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "9e0b5599ee830756427f572f5f0267601ed9540e304e397639df865fdd27046d";
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
