
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-interfaces";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/rolling/point_cloud_interfaces/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "6cc77668f11090f490fd9818727b1cb9e297770aa9f5b040cc225727a7939622";
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
