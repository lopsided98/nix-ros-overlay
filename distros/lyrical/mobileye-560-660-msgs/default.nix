
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mobileye-560-660-msgs";
  version = "4.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/astuff_sensor_msgs-release/archive/release/lyrical/mobileye_560_660_msgs/4.0.0-5.tar.gz";
    name = "4.0.0-5.tar.gz";
    sha256 = "90ce3596f5926fa1074bb686ed75fb43095d30eeea83266ba7a7ee19501fdfef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message definitions for the Mobileye 560/660";
    license = with lib.licenses; [ mit ];
  };
}
