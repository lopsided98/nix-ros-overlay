
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-event-camera-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_msgs-release/archive/release/jazzy/event_camera_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "b487f7a0a17c0f582a772c510413775de9b0cf7275eb919944679be7dd37ae92";
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
