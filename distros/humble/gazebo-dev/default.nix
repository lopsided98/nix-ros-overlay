
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_11 }:
buildRosPackage {
  pname = "ros-humble-gazebo-dev";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/humble/gazebo_dev/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "2aef1ec6987fe2b7ee6eba8dbc9ed95e9e41eeeeba55fddc7aadee963b7fd03f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo_11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a cmake config for the default version of Gazebo for the ROS distribution.";
    license = with lib.licenses; [ asl20 ];
  };
}
