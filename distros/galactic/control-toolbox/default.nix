
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, control-msgs, rclcpp, rclcpp-lifecycle, rcutils, realtime-tools }:
buildRosPackage {
  pname = "ros-galactic-control-toolbox";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/control_toolbox-release/archive/release/galactic/control_toolbox/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5ca8a402474b999e41344847cec932fefabff28aa3a6855784299fb5339436ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest rclcpp-lifecycle ];
  propagatedBuildInputs = [ control-msgs rclcpp rcutils realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The control toolbox contains modules that are useful across all controllers.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
