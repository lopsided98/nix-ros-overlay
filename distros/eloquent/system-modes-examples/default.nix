
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, boost, rclcpp, rclcpp-lifecycle, system-modes }:
buildRosPackage {
  pname = "ros-eloquent-system-modes-examples";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/eloquent/system_modes_examples/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "1dbb35fd6f71838d2bd9b5d9946cfcc635c4ff25ad850db157dd355301b96cd7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle system-modes ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
