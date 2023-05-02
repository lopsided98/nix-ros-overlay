
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-rolling-unique-identifier-msgs";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/rolling/unique_identifier_msgs/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "16f3ae87b457258f42987b10872f431840410ef3664883d89c4ac5966b603634";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-core-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = ''ROS messages for universally unique identifiers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
