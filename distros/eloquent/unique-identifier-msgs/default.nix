
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-eloquent-unique-identifier-msgs";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unique_identifier_msgs-release/archive/release/eloquent/unique_identifier_msgs/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "210839c29ed2529b847f699fdf61c58f5ab44fbf7d0eea233b833c1d669f6d61";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS messages for universally unique identifiers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
