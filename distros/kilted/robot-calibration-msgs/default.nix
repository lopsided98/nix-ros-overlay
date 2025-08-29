
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-robot-calibration-msgs";
  version = "0.10.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/kilted/robot_calibration_msgs/0.10.0-2.tar.gz";
    name = "0.10.0-2.tar.gz";
    sha256 = "c4d920e29d291538e04beb582c71e5709839d21f087ffcdb9acefff5e5fad08a";
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
