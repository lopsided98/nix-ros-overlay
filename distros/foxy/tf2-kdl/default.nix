
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, builtin-interfaces, geometry-msgs, orocos-kdl, rclcpp, tf2, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-tf2-kdl";
  version = "0.13.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/tf2_kdl/0.13.9-1.tar.gz";
    name = "0.13.9-1.tar.gz";
    sha256 = "04a5fd763367edbde2ace899ec055336e04ea456f0907a147f1e656ddc058c73";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest rclcpp tf2-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs orocos-kdl tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''KDL binding for tf2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
