
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-neobotix-usboard-msgs";
  version = "4.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/rolling/neobotix_usboard_msgs/4.0.0-2.tar.gz";
    name = "4.0.0-2.tar.gz";
    sha256 = "226da6e26967f320a174aa5462d4d21fa016840e5b97b4a5496fa034345ed5d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''neobotix_usboard package'';
    license = with lib.licenses; [ mit ];
  };
}
