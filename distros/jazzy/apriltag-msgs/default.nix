
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-apriltag-msgs";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_msgs-release/archive/release/jazzy/apriltag_msgs/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "6df6c2b2170e37ff18df428f02ea933a7f9a11c94e57ebbcae509fda749ecc5a";
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
