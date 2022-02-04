
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, controller-manager, forward-command-controller, pluginlib, rclcpp, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-galactic-effort-controllers";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/galactic/effort_controllers/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "51eb5a8ce752ab33ac39df337d9d4a65367c004efabd9c8115173ceab897c1d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib ];
  checkInputs = [ ament-cmake-gmock controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ forward-command-controller rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic controller for forwarding commands.'';
    license = with lib.licenses; [ asl20 ];
  };
}
