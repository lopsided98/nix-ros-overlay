
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, connext-cmake-module, rcpputils, rcutils, rmw, rosidl-cmake }:
buildRosPackage {
  pname = "ros-foxy-rmw-connext-shared-cpp";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/foxy/rmw_connext_shared_cpp/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "b2a6d3dd4cd35d2372b9783b9162b862d3a8ebb90819d1e9684bd5bf33b4f418";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcpputils rcutils rmw ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-cmake ];

  meta = {
    description = ''C++ types and functions shared by the ROS middleware interface to RTI Connext Static and RTI Connext Dynamic.'';
    license = with lib.licenses; [ asl20 ];
  };
}
