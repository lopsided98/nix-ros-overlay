
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, backward-ros, control-msgs, control-toolbox, controller-interface, generate-parameter-library, hardware-interface, kdl-parser, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, rsl, tl-expected, urdf }:
buildRosPackage {
  pname = "ros-rolling-om-gravity-compensation-controller";
  version = "4.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/rolling/om_gravity_compensation_controller/4.1.2-1.tar.gz";
    name = "4.1.2-1.tar.gz";
    sha256 = "c7edc8dbcf6e8efc731d5ce1b268c364091a486dd4de917730dfc28d1040d36b";
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
