
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-flir-camera-msgs";
  version = "2.0.20-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/jazzy/flir_camera_msgs/2.0.20-1.tar.gz";
    name = "2.0.20-1.tar.gz";
    sha256 = "aa2826ee7b8bf637f68ed45ef548a85d2b8ccd9091d0086a7b259ce3e07ca649";
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
