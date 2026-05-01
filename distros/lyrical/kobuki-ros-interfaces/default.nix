
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-kobuki-ros-interfaces";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kobuki_ros_interfaces-release/archive/release/lyrical/kobuki_ros_interfaces/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "ae9b1b64cc28c180aa4add487fa02712363ccfce98805cf76538af01285bd6d8";
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
