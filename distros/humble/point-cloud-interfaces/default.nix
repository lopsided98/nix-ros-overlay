
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-point-cloud-interfaces";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/point_cloud_transport_plugins-release/archive/release/humble/point_cloud_interfaces/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "e5ba7db24543bcab04448351993eaf7b8d7019ee06695e2840b29ae192c25737";
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
