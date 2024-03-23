
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-robot-calibration-msgs";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/rolling/robot_calibration_msgs/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "587cef0f5c28a17ab21de0454af3eee662425ec9efa04a6715f9d1abbcc07d99";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-generators rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages for calibrating a robot";
    license = with lib.licenses; [ asl20 ];
  };
}
