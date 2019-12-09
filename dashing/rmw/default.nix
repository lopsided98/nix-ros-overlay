
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, rcutils, ament-lint-common, ament-cmake-gmock, rosidl-generator-c, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-rmw";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw-release/archive/release/dashing/rmw/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "b7948ecd56826d4c6cdcfc147b20fe679f8103c2901314c4b5cef0821d16dc19";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils ];
  checkInputs = [ ament-cmake-gmock ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-generator-c rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Contains the ROS middleware API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
