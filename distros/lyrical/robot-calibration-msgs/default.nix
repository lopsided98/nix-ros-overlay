
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-robot-calibration-msgs";
  version = "0.10.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/robot_calibration-release/archive/release/lyrical/robot_calibration_msgs/0.10.1-3.tar.gz";
    name = "0.10.1-3.tar.gz";
    sha256 = "89286b3f0c123cb0cc591858b9bb1a685341e021a4452e38db18eb733b865258";
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
