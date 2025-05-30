
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-flir-camera-msgs";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/kilted/flir_camera_msgs/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "33764bfb561fe64d4e89224e3ec9c65b47f40dab30238b221bbb51c5d940c4c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "messages related to flir camera driver";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
