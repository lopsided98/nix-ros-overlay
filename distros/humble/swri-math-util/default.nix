
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, rclcpp }:
buildRosPackage {
  pname = "ros-humble-swri-math-util";
  version = "3.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_math_util/3.8.7-1.tar.gz";
    name = "3.8.7-1.tar.gz";
    sha256 = "78023e82a930fdb9692217ed63be435baf3d89b1dfe0cff005337d6cd1b36339";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package with commonly used math utility code.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
