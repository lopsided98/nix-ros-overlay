
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-apriltag-msgs";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_msgs-release/archive/release/humble/apriltag_msgs/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "151d641264106c2e4fd9d243ffff53489afc9c2c01140222da51142144e01bc0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''AprilTag message definitions'';
    license = with lib.licenses; [ mit ];
  };
}
