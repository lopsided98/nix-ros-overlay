
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-yasmin-msgs";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_msgs/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "a4ee31989a99e351d3afe96fbb9aab706feb5b35db31f9f1ae2c68c275fe815a";
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
