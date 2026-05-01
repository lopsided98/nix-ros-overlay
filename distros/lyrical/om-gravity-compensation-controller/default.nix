
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, backward-ros, control-msgs, control-toolbox, controller-interface, generate-parameter-library, hardware-interface, kdl-parser, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, rsl, tl-expected, urdf }:
buildRosPackage {
  pname = "ros-lyrical-om-gravity-compensation-controller";
  version = "4.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/lyrical/om_gravity_compensation_controller/4.1.2-3.tar.gz";
    name = "4.1.2-3.tar.gz";
    sha256 = "99f2ab6c5aff1f4da44ffd03241d53fe3270d9927168dccf5e7c34869f440bfb";
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
