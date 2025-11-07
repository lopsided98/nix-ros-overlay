
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-mypy, ament-cmake-python, ament-cmake-ros, builtin-interfaces, control-msgs, diagnostic-msgs, example-interfaces, geometry-msgs, nav-msgs, python3Packages, rcl-interfaces, rclpy, rosbridge-test-msgs, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbridge-library";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/rosbridge_library/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "a55f8f3d43f89fa3f89afc0dd821e0e338a2f7559d70ecc5145876263b04a86c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ action-msgs ament-cmake-mypy builtin-interfaces control-msgs diagnostic-msgs example-interfaces geometry-msgs nav-msgs rosbridge-test-msgs sensor-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.pillow python3Packages.pymongo python3Packages.ujson rcl-interfaces rclpy ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "The core rosbridge package, responsible for interpreting JSON and performing the appropriate
ROS action, like subscribe, publish, call service, and interact with params.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
