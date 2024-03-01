
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-point-cloud-interfaces";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/point_cloud_interfaces/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "ad8509b58b8725f9a7671bd81ea6cb3215d9b1c73eca3d08e944fe78fa85c316";
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
