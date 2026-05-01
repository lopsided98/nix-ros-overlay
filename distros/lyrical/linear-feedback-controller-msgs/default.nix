
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-gtest, ament-cmake-pep257, ament-cmake-pytest, ament-cmake-uncrustify, ament-lint-common, builtin-interfaces, eigen, geometry-msgs, jrl-cmakemodules, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2-eigen }:
buildRosPackage {
  pname = "ros-lyrical-linear-feedback-controller-msgs";
  version = "1.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/linear-feedback-controller-msgs-release/archive/release/lyrical/linear_feedback_controller_msgs/1.2.2-3.tar.gz";
    name = "1.2.2-3.tar.gz";
    sha256 = "97a99fc3cdfb71a0429a3c42fa0d996b204bf5ab7fdca3134642c46b27d9bf4c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake jrl-cmakemodules rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-gtest ament-cmake-pep257 ament-cmake-pytest ament-cmake-uncrustify ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces eigen geometry-msgs rosidl-default-runtime sensor-msgs std-msgs tf2-eigen ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS msgs that interface the linear_feedback_controller package.";
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
