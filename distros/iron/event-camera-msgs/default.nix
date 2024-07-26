
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-event-camera-msgs";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_msgs-release/archive/release/iron/event_camera_msgs/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "8a34eeb7c7eff416814f4fd72323203116fefdfacca5ed94599655e2ed3b8af0";
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
