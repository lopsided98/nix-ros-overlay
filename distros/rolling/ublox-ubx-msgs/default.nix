
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ublox-ubx-msgs";
  version = "0.3.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/rolling/ublox_ubx_msgs/0.3.5-4.tar.gz";
    name = "0.3.5-4.tar.gz";
    sha256 = "f2d2e05fcaa0ca198a5e0548c9d40f9feda7928e3db52d0daa32b61a38c03d36";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''UBLOX UBX ROS2 Msgs'';
    license = with lib.licenses; [ asl20 ];
  };
}
