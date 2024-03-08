
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-delphi-esr-msgs";
  version = "4.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/rolling/delphi_esr_msgs/4.0.0-3.tar.gz";
    name = "4.0.0-3.tar.gz";
    sha256 = "475b5224211a07c90872c357203657aed9b43fb2c6fa2f206bf7666a28dc58f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message definitions for the Delphi ESR'';
    license = with lib.licenses; [ mit ];
  };
}
