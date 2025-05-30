
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-event-camera-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_msgs-release/archive/release/humble/event_camera_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7c261eecb7a6473ff6cf10ce034f249eb6375bf838cccf0aa0286570e1506efe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = "messages for event based cameras";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
