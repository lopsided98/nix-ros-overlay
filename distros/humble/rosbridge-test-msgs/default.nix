
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-cmake-pytest, builtin-interfaces, diagnostic-msgs, example-interfaces, geometry-msgs, nav-msgs, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbridge-test-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_test_msgs/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "855c7125470f871134a540c0bcdc8ee8fee3e02cb6b5d003c77cb55308d4b432";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ actionlib-msgs ament-cmake-pytest builtin-interfaces diagnostic-msgs example-interfaces geometry-msgs nav-msgs sensor-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rclpy rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message and service definitions used in internal tests for rosbridge packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
