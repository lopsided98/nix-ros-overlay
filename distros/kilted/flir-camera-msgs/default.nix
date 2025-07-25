
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-flir-camera-msgs";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flir_camera_driver-release/archive/release/kilted/flir_camera_msgs/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "7a5b37302461f4a8dea6c006344e4abbb7340f2110d6f9d1af51119ac9a36b64";
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
