
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-jazzy-yasmin-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/jazzy/yasmin_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "ca5ff35b03e8e19561336d0b5d3c6a700d01249ce787f57297f54248b507bdc9";
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
