
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-kobuki-ros-interfaces";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_ros_interfaces-release/archive/release/kilted/kobuki_ros_interfaces/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "137504ea026b171568fa74183efaf236e12de2e7d2e37728a766c8cd74984d4d";
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
