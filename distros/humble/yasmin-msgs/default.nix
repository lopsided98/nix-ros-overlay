
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-yasmin-msgs";
  version = "4.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_msgs/4.2.4-1.tar.gz";
    name = "4.2.4-1.tar.gz";
    sha256 = "54c916721802f46f667b8e6a5b225f2f3815f8a1a91faa720b27b6967acbf64d";
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
