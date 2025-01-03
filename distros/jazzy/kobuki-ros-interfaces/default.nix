
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-kobuki-ros-interfaces";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_ros_interfaces-release/archive/release/jazzy/kobuki_ros_interfaces/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "eecf37a5354abd11b46a097f95ddf9014f08c3a651e9cba07924d5124b496e01";
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
