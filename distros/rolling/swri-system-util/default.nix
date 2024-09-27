
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-swri-system-util";
  version = "3.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_system_util/3.7.3-1.tar.gz";
    name = "3.7.3-1.tar.gz";
    sha256 = "e79ce720587d50c7599296e51adae4176b85c61b2ac62973001b6e34a50f66c2";
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
