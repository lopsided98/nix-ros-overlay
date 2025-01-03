
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-robot-calibration-msgs";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/rolling/robot_calibration_msgs/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "4e9f22f0f1a08e7b95d0307423553358b6f6dc8253e7814bef37138b339f0caf";
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
