
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-mypy, ament-cmake-python, ament-cmake-ros, builtin-interfaces, control-msgs, diagnostic-msgs, example-interfaces, geometry-msgs, nav-msgs, python3Packages, rcl-interfaces, rclpy, rosbridge-test-msgs, rosidl-pycommon, sensor-msgs, std-msgs, std-srvs, stereo-msgs, tf2-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosbridge-library";
  version = "4.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/lyrical/rosbridge_library/4.2.1-1.tar.gz";
    name = "4.2.1-1.tar.gz";
    sha256 = "4140aae674abee25b8d7de6e9684812637a5466fe608e7df50781183a28939f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ action-msgs ament-cmake-mypy builtin-interfaces control-msgs diagnostic-msgs example-interfaces geometry-msgs nav-msgs rosbridge-test-msgs sensor-msgs std-msgs std-srvs stereo-msgs tf2-msgs trajectory-msgs visualization-msgs ];
  propagatedBuildInputs = [ python3Packages.cbor2 python3Packages.numpy python3Packages.pillow python3Packages.ujson rcl-interfaces rclpy rosidl-pycommon ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "The core rosbridge package, responsible for interpreting JSON and performing the appropriate
ROS action, like subscribe, publish, call service, and interact with params.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
