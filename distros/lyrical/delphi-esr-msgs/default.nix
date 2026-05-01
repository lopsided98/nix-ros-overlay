
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-delphi-esr-msgs";
  version = "4.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/lyrical/delphi_esr_msgs/4.0.0-5.tar.gz";
    name = "4.0.0-5.tar.gz";
    sha256 = "53991fe566782742c8cafe8cc79fadbaefa48d31ab9789fa28b8ac3a684255f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message definitions for the Delphi ESR";
    license = with lib.licenses; [ mit ];
  };
}
