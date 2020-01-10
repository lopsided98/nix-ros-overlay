
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazeboSimulator }:
buildRosPackage {
  pname = "ros-dashing-gazebo-dev";
  version = "3.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_dev/3.3.4-1.tar.gz";
    name = "3.3.4-1.tar.gz";
    sha256 = "468471b3288c805dd6724f2db71fad5fe89632d0ca1b77af5aab020be7576104";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazeboSimulator.gazebo9 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
