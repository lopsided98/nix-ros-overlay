
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-point-cloud-interfaces";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/rolling/point_cloud_interfaces/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "bd013452a9631bb956ed43856797bd23f5b35dabe6e2f629f944b42448b7da14";
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
