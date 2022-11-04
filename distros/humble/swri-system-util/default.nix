
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-humble-swri-system-util";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_system_util/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "d6bbd6c32d85ac4aa6ea8c940114ea7bf2523680b33adc6bd52d6e5584cfb999";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-index-cpp ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
