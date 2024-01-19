
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-event-camera-msgs";
  version = "1.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_msgs-release/archive/release/humble/event_camera_msgs/1.1.5-1.tar.gz";
    name = "1.1.5-1.tar.gz";
    sha256 = "08a1e4504d25b090101a36079d3cd3e448fd97c0b7fc65be99345683b3e7f414";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = ''messages for event based cameras'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
