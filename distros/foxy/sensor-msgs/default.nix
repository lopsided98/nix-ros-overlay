
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-sensor-msgs";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/foxy/sensor_msgs/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "085d2a034281e03cb734361535a40c207275a52670598ce49b60f26c1fd6f3a3";
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
