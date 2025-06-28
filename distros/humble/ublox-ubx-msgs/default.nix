
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ublox-ubx-msgs";
  version = "0.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/humble/ublox_ubx_msgs/0.5.7-1.tar.gz";
    name = "0.5.7-1.tar.gz";
    sha256 = "2789391485130f653853400bab841b483ffa1ec4f14c6f4423100ff507c6d722";
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
