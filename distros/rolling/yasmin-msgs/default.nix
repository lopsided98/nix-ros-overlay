
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-yasmin-msgs";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_msgs/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "6d68c80d6a0bda13fc3a623be3c7c1cb32d656bec0a08099ea941ee1f912d4bb";
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
