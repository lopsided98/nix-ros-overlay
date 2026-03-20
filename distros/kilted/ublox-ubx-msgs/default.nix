
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ublox-ubx-msgs";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox_dgnss-release/archive/release/kilted/ublox_ubx_msgs/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "e579c44a42ea1e7d6cfd991f8d25ca5809d1c028968ba034d8308b369e4faace";
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
