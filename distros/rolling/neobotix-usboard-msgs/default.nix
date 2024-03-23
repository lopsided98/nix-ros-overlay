
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-neobotix-usboard-msgs";
  version = "4.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/rolling/neobotix_usboard_msgs/4.0.0-3.tar.gz";
    name = "4.0.0-3.tar.gz";
    sha256 = "80d2886785bb30ab240b3d9c09464924d033eab350c5772a44710a7e6fd8c533";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "neobotix_usboard package";
    license = with lib.licenses; [ mit ];
  };
}
