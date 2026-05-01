
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-apriltag-msgs";
  version = "2.0.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_msgs-release/archive/release/lyrical/apriltag_msgs/2.0.1-6.tar.gz";
    name = "2.0.1-6.tar.gz";
    sha256 = "24e9ca5375cd7f4fa0e34cbaf87fc0d1d30d3848128ee1338c2e0b1f5e383fd9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "AprilTag message definitions";
    license = with lib.licenses; [ mit ];
  };
}
