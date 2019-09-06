
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, rosidl-default-generators, ament-cmake-gtest, rosidl-cmake, std-msgs, ament-lint-auto, rosidl-default-runtime, geometry-msgs }:
buildRosPackage rec {
  pname = "ros-dashing-sensor-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/dashing/sensor_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "34e8339737d225ec9f72105e48ff916accd386d0b77aff2584eee4dd6cbb49fc";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs geometry-msgs builtin-interfaces ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto rosidl-cmake ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces std-msgs rosidl-default-runtime geometry-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some sensor data related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
