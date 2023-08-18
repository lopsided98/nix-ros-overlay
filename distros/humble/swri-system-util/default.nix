
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-humble-swri-system-util";
  version = "3.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_system_util/3.5.4-1.tar.gz";
    name = "3.5.4-1.tar.gz";
    sha256 = "7e7d715006189b74d90650b233482b36809aea1754c946def494fdf414fde9bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-index-cpp ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_system_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
