
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-smach-msgs";
  version = "3.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/kilted/smach_msgs/3.0.3-3.tar.gz";
    name = "3.0.3-3.tar.gz";
    sha256 = "9104f57882e7bed3587c687bc77040d2b04032b35a08bee636fc364b4f8f3802";
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
