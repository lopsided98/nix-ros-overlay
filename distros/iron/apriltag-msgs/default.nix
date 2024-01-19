
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-apriltag-msgs";
  version = "2.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_msgs-release/archive/release/iron/apriltag_msgs/2.0.1-4.tar.gz";
    name = "2.0.1-4.tar.gz";
    sha256 = "41defe4bc37957f053ac176da55ab8d4ba677df73ef9301160f36dfa807a02d7";
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
