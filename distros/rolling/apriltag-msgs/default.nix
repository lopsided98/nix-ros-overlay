
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-apriltag-msgs";
  version = "2.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_msgs-release/archive/release/rolling/apriltag_msgs/2.0.1-5.tar.gz";
    name = "2.0.1-5.tar.gz";
    sha256 = "b3091f895f991ad7abc18f859686f81d0817bcdb62d43670048ddd095da1d0c3";
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
