
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cppzmq, ncurses, rclcpp }:
buildRosPackage {
  pname = "ros-dashing-behaviortree-cpp-v3";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/BehaviorTree/behaviortree_cpp_v3-release/archive/release/dashing/behaviortree_cpp_v3/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "05db4b874a44dcbdf1d5014edea6dcb648ffad20eb91a079cc319de4ce836833";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cppzmq ncurses rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
