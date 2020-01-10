
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-unique-identifier-msgs";
  version = "2.0.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/crystal/unique_identifier_msgs/2.0.0-0.tar.gz";
    name = "2.0.0-0.tar.gz";
    sha256 = "87eed67a35931d8ae852ed650b8b98049ee7af773fa97ba29ab0f0d42b5f3636";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS messages for universally unique identifiers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
