
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-pep257, ament-cmake-uncrustify, ament-lint, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-smach-msgs";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/executive_smach-release/archive/release/rolling/smach_msgs/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "ba069f387c804046e87bd51d24b8d7526b58882bfc6c042b7623a8327c74db04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-cppcheck rosidl-default-generators ];
  checkInputs = [ ament-cmake-cpplint ament-cmake-flake8 ament-cmake-pep257 ament-cmake-uncrustify ament-lint ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-cppcheck rosidl-default-generators ];

  meta = {
    description = ''this package contains a set of messages that are used by the introspection
    interfaces for smach.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
