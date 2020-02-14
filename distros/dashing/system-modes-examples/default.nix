
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, rclcpp, rclcpp-lifecycle, system-modes }:
buildRosPackage {
  pname = "ros-dashing-system-modes-examples";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/dashing/system_modes_examples/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "821afe20643a4d3f645a637ed8e52f10adc6a9c84bde3521d26ed750c8bccc21";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle system-modes ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
