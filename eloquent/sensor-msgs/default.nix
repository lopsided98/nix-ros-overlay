
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-sensor-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/sensor_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "dc7a03b5581c5709fefff3c9194a5cce0d7f263f38091a0034c2d8012b03eb37";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some sensor data related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
