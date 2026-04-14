
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-point-cloud-interfaces";
  version = "1.0.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/point_cloud_interfaces/1.0.14-1.tar.gz";
    name = "1.0.14-1.tar.gz";
    sha256 = "318b9c4214b1e3ce932cc0b08743a8b18d24d5441326f52798fd32063a94c201";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "msg definitions for use with point_cloud_transport plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
