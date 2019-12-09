
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, ament-lint-common, ament-cmake-gmock, rosidl-generator-c, ament-cmake-version, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rmw";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/eloquent/rmw/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "83bd63a2b5c50d6468e9a9d5cb032762ec0c8e17a4321fb4630f31e95c04a1bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils ];
  checkInputs = [ ament-cmake-gmock ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-c rcutils ];
  nativeBuildInputs = [ ament-cmake-version ament-cmake-ros ];

  meta = {
    description = ''Contains the ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
