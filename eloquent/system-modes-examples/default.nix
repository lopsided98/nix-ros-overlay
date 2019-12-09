
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, system-modes, boost, rclcpp-lifecycle, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-eloquent-system-modes-examples";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/eloquent/system_modes_examples/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "a5b8ba166e181e91f6c9a6dc869e13c847449864960baa872998ceb5ab78aa78";
  };

  buildType = "ament_cmake";
  buildInputs = [ boost system-modes rclcpp-lifecycle rclcpp ];
  checkInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost system-modes rclcpp-lifecycle rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
