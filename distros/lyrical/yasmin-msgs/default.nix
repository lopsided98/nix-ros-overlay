
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-lyrical-yasmin-msgs";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/lyrical/yasmin_msgs/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "f214927f79e06b1277bea382a9ec9db481fb60edcae49c14e6d994f39b0c5401";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ action-msgs rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Msgs of (Yet Another State MachINe)";
    license = with lib.licenses; [ asl20 ];
  };
}
