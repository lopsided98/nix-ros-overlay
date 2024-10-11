
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-pytest, builtin-interfaces, diagnostic-msgs, example-interfaces, geometry-msgs, nav-msgs, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbridge-test-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/jazzy/rosbridge_test_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "6dd7e7c24d596b4bc0df3e20ef5ec1ae505f55a8e5329d6a2eee3bd09a7dbd55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ action-msgs ament-cmake-pytest builtin-interfaces diagnostic-msgs example-interfaces geometry-msgs nav-msgs sensor-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message and service definitions used in internal tests for rosbridge packages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
