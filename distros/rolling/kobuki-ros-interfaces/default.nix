
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-kobuki-ros-interfaces";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_ros_interfaces-release/archive/release/rolling/kobuki_ros_interfaces/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "dfe8d880488c405c3789f7e179ad13106a93a04063e5ef38b7df73abe91db4f7";
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
