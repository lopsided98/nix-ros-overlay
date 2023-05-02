
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-robot-calibration-msgs";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/rolling/robot_calibration_msgs/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "42c57b0e93106af6e653508f0d866c25b49e0277eaca85bfbccb014db7f5427e";
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
