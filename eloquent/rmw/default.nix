
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-cmake-version, ament-lint-auto, ament-lint-common, rcutils, rosidl-generator-c }:
buildRosPackage {
  pname = "ros-eloquent-rmw";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/eloquent/rmw/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "83bd63a2b5c50d6468e9a9d5cb032762ec0c8e17a4321fb4630f31e95c04a1bf";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcutils rosidl-generator-c ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-version ];

  meta = {
    description = ''Contains the ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
