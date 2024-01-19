
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-kobuki-ros-interfaces";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_ros_interfaces-release/archive/release/rolling/kobuki_ros_interfaces/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "691448752239cd8c962dae3d12cf6a1efa4830ef2bae753ce4da5c0e10c56eda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      ROS2 message, service and action interfaces for the Kobuki.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
