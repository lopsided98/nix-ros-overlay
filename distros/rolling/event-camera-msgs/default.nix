
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-event-camera-msgs";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_msgs-release/archive/release/rolling/event_camera_msgs/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "69cd21779d220d9f22921b6eee6c396074772e1fb996d86fb0c84b4a9b16b5e7";
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
