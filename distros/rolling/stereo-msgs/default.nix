
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-stereo-msgs";
  version = "5.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/stereo_msgs/5.4.1-1.tar.gz";
    name = "5.4.1-1.tar.gz";
    sha256 = "ee11ed23c16fd326407f6d659834b53d575ae0f74f828a217b9dabeaae2deb9b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some stereo camera related message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
