
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-point-cloud-interfaces";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/iron/point_cloud_interfaces/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "249d8b348cc96d4cd1306b5c25337e10de4e88fb7717d06b1d17b583de86847f";
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
