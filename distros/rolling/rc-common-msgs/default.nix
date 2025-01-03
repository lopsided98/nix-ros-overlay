
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rc-common-msgs";
  version = "0.5.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rc_common_msgs_ros2-release/archive/release/rolling/rc_common_msgs/0.5.3-5.tar.gz";
    name = "0.5.3-5.tar.gz";
    sha256 = "ee5bce3969641d1b48fdf43646436e4e121e8a3920c4679197f99961b6392f37";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Common msg and srv definitions used by Roboception's ROS2 packages";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
