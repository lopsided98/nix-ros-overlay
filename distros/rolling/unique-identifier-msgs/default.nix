
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime }:
buildRosPackage {
  pname = "ros-rolling-unique-identifier-msgs";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/rolling/unique_identifier_msgs/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "a1a72f7b76cd2ddcc69241d9d55adaf770287a73e7e80bbcccb6ff817693f21b";
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
