
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-msgs";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/turtlebot4_msgs/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "95c029630c25c9e869eb05867a97754e216eb4fe5464062bd4b6c0f41aa8991c";
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
