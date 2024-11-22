
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-flir-camera-msgs";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/flir_camera_msgs/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "d39e867a5622d36327fe9a82e6ae3ee18fac468a9d9f7b3fbdbbcaefb8ea66e1";
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
