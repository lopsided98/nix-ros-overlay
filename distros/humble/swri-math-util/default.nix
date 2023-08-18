
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, boost, rclcpp }:
buildRosPackage {
  pname = "ros-humble-swri-math-util";
  version = "3.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_math_util/3.5.4-1.tar.gz";
    name = "3.5.4-1.tar.gz";
    sha256 = "eb3d13b68c2b9030543058d99c56e415f1bcdf941496d904808b3691bb313f20";
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
