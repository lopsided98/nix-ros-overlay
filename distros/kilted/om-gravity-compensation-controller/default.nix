
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, backward-ros, control-msgs, control-toolbox, controller-interface, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, rsl, tl-expected, urdf }:
buildRosPackage {
  pname = "ros-kilted-om-gravity-compensation-controller";
  version = "3.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/kilted/om_gravity_compensation_controller/3.2.2-1.tar.gz";
    name = "3.2.2-1.tar.gz";
    sha256 = "2891f651402ad4b76e0526c2055be926dacf0fbcb804a319aa253eb92426264f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles backward-ros control-msgs control-toolbox controller-interface generate-parameter-library hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools rsl tl-expected urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for compensating for gravity on a group of joints";
    license = with lib.licenses; [ asl20 ];
  };
}
