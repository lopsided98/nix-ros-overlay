
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ublox-ubx-msgs";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/iron/ublox_ubx_msgs/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "a8e55887adb83d5be349e8decf0e8ce7f440301f0972f4d2c869d7a46dd1d8be";
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
