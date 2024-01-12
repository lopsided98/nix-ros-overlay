
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_11 }:
buildRosPackage {
  pname = "ros-iron-gazebo-dev";
  version = "3.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/iron/gazebo_dev/3.7.0-3.tar.gz";
    name = "3.7.0-3.tar.gz";
    sha256 = "772482b571ef7c119a563efd40eadad8e0a3f82a76b62b32702d0e6bf225b665";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gazebo_11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
