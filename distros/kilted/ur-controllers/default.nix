
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, angles, control-msgs, controller-interface, controller-manager, generate-parameter-library, geometry-msgs, hardware-interface, hardware-interface-testing, joint-trajectory-controller, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcutils, realtime-tools, ros2-control-test-assets, std-msgs, std-srvs, tf2-geometry-msgs, tf2-ros, trajectory-msgs, ur-dashboard-msgs, ur-msgs }:
buildRosPackage {
  pname = "ros-kilted-ur-controllers";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/kilted/ur_controllers/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "e386a8b3aadcaadeb9bfaafdd9e16850d02234522da1e8fe9d8032a7219c4a1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ controller-manager hardware-interface-testing ros2-control-test-assets ];
  propagatedBuildInputs = [ action-msgs angles control-msgs controller-interface generate-parameter-library geometry-msgs hardware-interface joint-trajectory-controller lifecycle-msgs pluginlib rclcpp-lifecycle rcutils realtime-tools std-msgs std-srvs tf2-geometry-msgs tf2-ros trajectory-msgs ur-dashboard-msgs ur-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides controllers that use the speed scaling interface of Universal Robots.";
    license = with lib.licenses; [ bsd3 ];
  };
}
