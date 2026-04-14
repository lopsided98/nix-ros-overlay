
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-rolling-yasmin-msgs";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/rolling/yasmin_msgs/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "f3c23ec27ec4ca637bf7b5a9207872d7f1339da27e3a409c37541f4cdb1ba1ad";
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
