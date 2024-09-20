
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-humble-swri-system-util";
  version = "3.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_system_util/3.7.2-1.tar.gz";
    name = "3.7.2-1.tar.gz";
    sha256 = "aba36865db4d82d4a5edae8a58abebffffa1d740867ca4fd2e5d1b818c70133f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used system utilities.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
