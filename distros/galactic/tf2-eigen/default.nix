
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometry-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-tf2-eigen";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/galactic/tf2_eigen/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "3aafa8eece29e1db5d08de0891b8ab7c08ee28be3d89756909f7778fb62725dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometry-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
