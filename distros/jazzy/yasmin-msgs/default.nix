
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-msgs";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_msgs/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "9f1d1b3881a621800998392d93c879da35926cb0ff5ac8a70196da1ecb266acc";
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
