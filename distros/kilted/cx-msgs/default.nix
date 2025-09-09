
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-cx-msgs";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_executive-release/archive/release/kilted/cx_msgs/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "e9e1aeb1b2e67d3da72d76c004e9984f1ffc7f304826fedc8b7cd88971d5081d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS interfaces for ROS2 CLIPS-Executive";
    license = with lib.licenses; [ asl20 ];
  };
}
