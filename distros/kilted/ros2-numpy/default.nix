# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-cmake-python, geometry-msgs, nav-msgs, python3Packages, sensor-msgs, tf-transformations }:
buildRosPackage {
  pname = "ros-kilted-ros2-numpy";
  version = "2.0.12-r0";

  src = fetchFromGitHub {
    owner = "Box-Robotics";
    repo = "ros2_numpy";
    rev = "d665add22e6a9070e88d9514bbf0dcbcb122a3dc";
    hash = "sha256-sA9AVWEQ3MHeXz9fSUj+sEn3ALHOHaOgK7C6tgfnWo8=";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python geometry-msgs nav-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ python3Packages.numpy tf-transformations ];

  meta = {
    description = "A collection of conversion functions for extracting numpy arrays from ROS messages";
    license = with lib.licenses; [ mit ];
  };
}
