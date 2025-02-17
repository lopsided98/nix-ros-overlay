
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-humble-yasmin-msgs";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/yasmin-release/archive/release/humble/yasmin_msgs/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "eac9d3312e0ad360984ffc8ef39134c8005efa299e5508a60d5145e0f1fd3297";
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
