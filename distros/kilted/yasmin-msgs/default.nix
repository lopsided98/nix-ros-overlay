
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-yasmin-msgs";
  version = "6.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_msgs/6.1.1-1.tar.gz";
    name = "6.1.1-1.tar.gz";
    sha256 = "ef1cad65ffcf2787b33d546278f68b4337e63eac39812c1287df29ee6425d03d";
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
