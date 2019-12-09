
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp-lifecycle, boost, ament-cmake-ros, ament-cmake-cppcheck, std-msgs, ament-cmake-cpplint, builtin-interfaces, ament-cmake, ament-cmake-flake8, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-gtest, ament-cmake-gmock, rosidl-default-generators, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-system-modes";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/crystal/system_modes/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "416b5b1c3e63223b949fd1ef38c4ad860204939dae003721c65389f69bf20d71";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle boost rclcpp std-msgs rosidl-default-generators builtin-interfaces ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-lint-auto ament-cmake-uncrustify ament-cmake ament-cmake-gmock ament-cmake-pep257 ament-cmake-gtest ];
  propagatedBuildInputs = [ rclcpp-lifecycle boost rclcpp std-msgs rosidl-default-generators builtin-interfaces ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Model-based distributed configuration handling.'';
    license = with lib.licenses; [ asl20 ];
  };
}
