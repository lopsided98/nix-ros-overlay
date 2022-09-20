
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-galactic-unique-identifier-msgs";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/galactic/unique_identifier_msgs/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "0a6d9e22e4502cbc8ff6bc92df9fbfdf62a26fa268ced0dbda45074b7c11a6d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS messages for universally unique identifiers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
