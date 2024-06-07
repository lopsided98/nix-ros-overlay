
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ublox-ubx-msgs";
  version = "0.5.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/jazzy/ublox_ubx_msgs/0.5.3-2.tar.gz";
    name = "0.5.3-2.tar.gz";
    sha256 = "2f9f85e712d08c625889d9810a7089498cc1cb2cd415172612871e820549c93c";
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
