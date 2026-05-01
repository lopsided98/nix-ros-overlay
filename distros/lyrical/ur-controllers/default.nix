
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, angles, control-msgs, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-test-assets, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, trajectory-msgs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ur-controllers";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_controllers/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "a3d70ecfb4e3171c793d98ee47787d3bb4412cf7f1d5be52e0ae8827ac8818cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ action-msgs angles control-msgs controller-interface generate-parameter-library geometry-msgs hardware-interface joint-trajectory-controller lifecycle-msgs pluginlib rclcpp-lifecycle rcutils realtime-tools std-msgs std-srvs tf2-geometry-msgs tf2-ros trajectory-msgs ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides controllers that use the speed scaling interface of Universal Robots.";
    license = with lib.licenses; [ bsd3 ];
  };
}
