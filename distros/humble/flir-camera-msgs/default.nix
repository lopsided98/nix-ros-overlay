
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-flir-camera-msgs";
  version = "2.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/flir_camera_driver-release/archive/release/humble/flir_camera_msgs/2.0.8-2.tar.gz";
    name = "2.0.8-2.tar.gz";
    sha256 = "f6aabdd3ec4148d71459041bdab2b7617b854017718cf88914095468f3c6c67f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''messages related to flir camera driver'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
