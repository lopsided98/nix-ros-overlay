
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-msgs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/jazzy/turtlebot4_msgs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "19f91d70874925aa769f849d2172c8290650185173f71ae0f81f918da05f7a24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Messages";
    license = with lib.licenses; [ asl20 ];
  };
}
