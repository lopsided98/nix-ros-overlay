
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcutils, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rmw";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/crystal/rmw/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "84db3e5964876c57a44fdd440da1df948bc548516baafee870546d851822990b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Contains the ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
