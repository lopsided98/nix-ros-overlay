
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, maliput, maliput-ros-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-maliput-ros-translation";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_ros-release/archive/release/foxy/maliput_ros_translation/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "bd0b7591cfd80a5b3585a31a40f024b8172538f51e234b46aea238eaeb102720";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake maliput maliput-ros-interfaces rosidl-default-generators ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Translates between maliput types and maliput ROS types in C++'';
    license = with lib.licenses; [ bsd3 ];
  };
}
