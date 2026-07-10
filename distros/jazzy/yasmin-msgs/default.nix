
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-msgs";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_msgs/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "cb28c38c9c31b2f59e07aaa77a2d510a61517ba6fd084cb8a1f1ad82a699000e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Msgs of (Yet Another State MachINe)";
    license = with lib.licenses; [ asl20 ];
  };
}
