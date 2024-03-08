
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ibeo-msgs";
  version = "4.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/rolling/ibeo_msgs/4.0.0-3.tar.gz";
    name = "4.0.0-3.tar.gz";
    sha256 = "57a2e99fc99aed52463cb41eb4c250906bdb4a783c09edb2088bdbca24d8f5af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The ibeo_msgs package'';
    license = with lib.licenses; [ mit ];
  };
}
