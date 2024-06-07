
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-swri-math-util";
  version = "3.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_math_util/3.6.1-3.tar.gz";
    name = "3.6.1-3.tar.gz";
    sha256 = "964f16379731889ad9768bc64b0f7a52885c334fc87cb485421e1c649d3acf57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "swri_math_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
