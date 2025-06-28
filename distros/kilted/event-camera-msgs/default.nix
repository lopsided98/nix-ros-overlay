
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-event-camera-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_msgs-release/archive/release/kilted/event_camera_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9eb89b1c813b71fc7e6f697d1a30bb5cdc6c398bf0540c50f1390e5ea9da75b9";
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
