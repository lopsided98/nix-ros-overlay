
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazebo_11 }:
buildRosPackage {
  pname = "ros-foxy-gazebo-dev";
  version = "3.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/foxy/gazebo_dev/3.5.3-1.tar.gz";
    name = "3.5.3-1.tar.gz";
    sha256 = "36aae42a263db7463a3179bed9b352a35ac7ca573986857a99467932b9e1c589";
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
