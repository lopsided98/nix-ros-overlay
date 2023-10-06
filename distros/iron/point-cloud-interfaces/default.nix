
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-point-cloud-interfaces";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/iron/point_cloud_interfaces/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "efbab54f34c68b9bb9f3a529bf04df56ecf5d17d0088a82ee87265dd8c45cb12";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''msg definitions for use with point_cloud_transport plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
