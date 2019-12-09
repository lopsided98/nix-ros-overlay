
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, rclcpp, ament-cmake-gtest, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-swri-math-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_math_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "38634ebcd805107fe7cb33b6c5bf3a4cc73faf3f3a94c577aaa9863fa1473e9d";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost rclcpp ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ boost rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''swri_math_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
