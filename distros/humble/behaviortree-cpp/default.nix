
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, git, rclcpp, ros-environment, sqlite, tinyxml-2, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-humble-behaviortree-cpp";
  version = "4.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/humble/behaviortree_cpp/4.9.0-1.tar.gz";
    name = "4.9.0-1.tar.gz";
    sha256 = "d1b66936b780de422bdbed8b513ec50c6905807f9162f146fafbcc90caf55772";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp cppzmq rclcpp sqlite tinyxml-2 tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "This package provides the Behavior Trees core library.";
    license = with lib.licenses; [ mit ];
  };
}
