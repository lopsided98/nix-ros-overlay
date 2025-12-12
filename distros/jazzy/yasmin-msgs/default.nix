
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-msgs";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_msgs/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "17845aa6d05efba2e490da39e5ce35d2756ab4ff642e1f10802cda3a9aae4eb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Msgs of (Yet Another State MachINe)";
    license = with lib.licenses; [ "GPL-3.0" ];
  };
}
