
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-kilted-yasmin-msgs";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/kilted/yasmin_msgs/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "dc2da7cce9f3302553640287425ec0d1716d6bd0f6b2437af0d584f33f3d0861";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-generators ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Msgs of (Yet Another State MachINe)";
    license = with lib.licenses; [ gpl3 ];
  };
}
