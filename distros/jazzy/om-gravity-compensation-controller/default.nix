
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, backward-ros, control-msgs, control-toolbox, controller-interface, generate-parameter-library, hardware-interface, kdl-parser, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, rsl, tl-expected, urdf }:
buildRosPackage {
  pname = "ros-jazzy-om-gravity-compensation-controller";
  version = "4.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_manipulator-release/archive/release/jazzy/om_gravity_compensation_controller/4.0.8-1.tar.gz";
    name = "4.0.8-1.tar.gz";
    sha256 = "40ae0f654b31b0b8f1db2d74ea7a93a550a53ba07817581f4d65fd03dbf21bf5";
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
