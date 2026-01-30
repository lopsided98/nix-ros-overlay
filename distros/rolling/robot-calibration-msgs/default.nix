
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-robot-calibration-msgs";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/rolling/robot_calibration_msgs/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "2885a30000d49a1b4c0670964a2eb147d4e430d4f1e10475b7e97a192b6f918c";
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
