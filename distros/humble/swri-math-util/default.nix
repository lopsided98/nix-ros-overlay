
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, rclcpp }:
buildRosPackage {
  pname = "ros-humble-swri-math-util";
  version = "3.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_math_util/3.4.0-3.tar.gz";
    name = "3.4.0-3.tar.gz";
    sha256 = "eaceebfd5db3f767dd603c8b257edf6ea9366121e54cbc625605c86fbddb9ef1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_math_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
