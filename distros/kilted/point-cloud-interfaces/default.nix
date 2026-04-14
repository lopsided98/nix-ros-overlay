
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-point-cloud-interfaces";
  version = "5.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/kilted/point_cloud_interfaces/5.0.5-2.tar.gz";
    name = "5.0.5-2.tar.gz";
    sha256 = "b414ebd2d9c68c2e0974eab12781f77859b162e278b3730646a1238c5af45fb1";
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
