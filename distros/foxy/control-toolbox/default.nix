
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, control-msgs, rclcpp, rclcpp-lifecycle, realtime-tools }:
buildRosPackage {
  pname = "ros-foxy-control-toolbox";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_toolbox-release/archive/release/foxy/control_toolbox/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "2023bb22a3f9d0c4a8c6761922b62f456a323b89ab88c49bf1a81dc6ee22da28";
  };

  buildType = "catkin";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs rclcpp realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
