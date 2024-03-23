
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-kobuki-ros-interfaces";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_ros_interfaces-release/archive/release/rolling/kobuki_ros_interfaces/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "89aa1f049b537365cb996a1d2fa7fe7c2e53ad45f5b7103c5f2de4f5bcec5027";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>
      ROS2 message, service and action interfaces for the Kobuki.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
