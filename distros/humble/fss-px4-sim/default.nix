
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fss-time, geographic-msgs, geometry-msgs, launch, launch-ros, mavros, mavros-msgs, nav-msgs, python3, rclcpp, rclcpp-components, rclpy, robot-state-publisher, rviz2, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-fss-px4-sim";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastswarmsim-release/archive/release/humble/fss_px4_sim/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "c31e46af5c5d988f328aadc10fb51f856901325c7ae45a14bfe0d5d97c8661df";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fss-time geographic-msgs geometry-msgs launch launch-ros mavros mavros-msgs nav-msgs python3 rclcpp rclcpp-components rclpy robot-state-publisher rviz2 sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 PX4/MAVROS-compatible drone simulators for FastSwarmSim.";
    license = with lib.licenses; [ bsd3 ];
  };
}
