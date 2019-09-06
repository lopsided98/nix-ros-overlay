
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-cmake, ament-lint-common }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-ros";
  version = "0.5.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake_ros-release/archive/release/crystal/ament_cmake_ros/0.5.0-0.tar.gz;
    sha256 = "dbbe845687229efffa115f1d88111fb766276cb7eaf4dd8d55b91149e76f6349";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The ROS specific CMake bits in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
