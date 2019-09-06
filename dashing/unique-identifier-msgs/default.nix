
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage rec {
  pname = "ros-dashing-unique-identifier-msgs";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/dashing/unique_identifier_msgs/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5326318e7c7ca7de056dffca5e1045d1022c93c8c3cfc868a6d51e15f92108c4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''ROS messages for universally unique identifiers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
