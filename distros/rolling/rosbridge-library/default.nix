
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-pytest, ament-cmake-ros, builtin-interfaces, control-msgs, diagnostic-msgs, example-interfaces, geometry-msgs, nav-msgs, python3Packages, rclpy, rosbridge-test-msgs, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbridge-library";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosbridge_library/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "2f1209f376bb29a21260930ee1ebd8b64dcb41314412f02e675fb20b3d3f3f35";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros ];
  checkInputs = [ action-msgs ament-cmake-pytest builtin-interfaces control-msgs diagnostic-msgs example-interfaces geometry-msgs nav-msgs rosbridge-test-msgs sensor-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ python3Packages.bson python3Packages.pillow rclpy rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros ];

  meta = {
    description = "The core rosbridge package, responsible for interpreting JSON andperforming
    the appropriate ROS action, like subscribe, publish, call service, and
    interact with params.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
