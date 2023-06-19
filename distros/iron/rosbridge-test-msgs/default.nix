
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, ament-cmake, ament-cmake-pytest, builtin-interfaces, diagnostic-msgs, example-interfaces, geometry-msgs, nav-msgs, rclpy, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-rosbridge-test-msgs";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/iron/rosbridge_test_msgs/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "e97ede299fc93a227eb9acfa7637ac9373f36da2f731d9c0aea59281d19bd1e2";
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
