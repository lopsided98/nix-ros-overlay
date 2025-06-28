
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, backward-ros, control-msgs, control-toolbox, controller-interface, generate-parameter-library, hardware-interface, kdl-parser, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, rsl, tl-expected, urdf }:
buildRosPackage {
  pname = "ros-rolling-om-gravity-compensation-controller";
  version = "4.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/om_gravity_compensation_controller/4.0.1-1.tar.gz";
    name = "4.0.1-1.tar.gz";
    sha256 = "5db1abb845d3a94fa13d581132e8f0ae9bf2e53c3d4c61c11c38da0d07ba3586";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface kdl-parser pluginlib rclcpp rclcpp-lifecycle realtime-tools rsl tl-expected urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for compensating for gravity on a group of joints";
    license = with lib.licenses; [ asl20 ];
  };
}
