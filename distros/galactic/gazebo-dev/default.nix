
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_11 }:
buildRosPackage {
  pname = "ros-galactic-gazebo-dev";
  version = "3.5.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/galactic/gazebo_dev/3.5.2-5.tar.gz";
    name = "3.5.2-5.tar.gz";
    sha256 = "44bffce0c4a66cb80e164dc7143a9f296f8a8b466e7befabb72a970d537c076b";
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
