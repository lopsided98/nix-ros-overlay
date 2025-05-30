
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ublox-ubx-msgs";
  version = "0.5.5-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/kilted/ublox_ubx_msgs/0.5.5-5.tar.gz";
    name = "0.5.5-5.tar.gz";
    sha256 = "c2310c62afc6137832e6f65a9c2852975f3541d77a49ae15f9a3c65558503dc0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "UBLOX UBX ROS2 Msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
