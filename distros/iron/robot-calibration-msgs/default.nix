
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-robot-calibration-msgs";
  version = "0.8.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/iron/robot_calibration_msgs/0.8.0-3.tar.gz";
    name = "0.8.0-3.tar.gz";
    sha256 = "4925c656bf34a541871b82f17af2fc8d26f149ddb68513305391e90c764891a2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-generators rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for calibrating a robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
