
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gazeboSimulator }:
buildRosPackage {
  pname = "ros-dashing-gazebo-dev";
  version = "3.3.3-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/gazebo_ros_pkgs-release/archive/release/dashing/gazebo_dev/3.3.3-1.tar.gz;
    sha256 = "9aefc11074d11e3eb40e3c73f8605907ed1937c01b4200da755f3d190096d859";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ gazeboSimulator.gazebo9 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
