
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-common, ament-cmake-gmock, ament-cmake-ros, ament-lint-auto, rcutils, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-crystal-rmw";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rmw-release/archive/release/crystal/rmw/0.6.1-0.tar.gz;
    sha256 = "84db3e5964876c57a44fdd440da1df948bc548516baafee870546d851822990b";
  };

  buildInputs = [ rcutils ];
  checkInputs = [ ament-lint-auto ament-lint-common ament-cmake-gmock ];
  propagatedBuildInputs = [ rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Contains the ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
