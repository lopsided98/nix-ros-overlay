
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros, ament-lint-auto, ament-lint-common, connext-cmake-module, rcpputils, rcutils, rmw, rosidl-cmake }:
buildRosPackage {
  pname = "ros-foxy-rmw-connext-shared-cpp";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/foxy/rmw_connext_shared_cpp/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "ab785510209d499f1c7c6a2709faccfa99b12ad9edc5833f024a69531c89e0ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rcpputils rcutils rmw rosidl-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake connext-cmake-module ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros rosidl-cmake ];

  meta = {
    description = ''C++ types and functions shared by the ROS middleware interface to RTI Connext Static and RTI Connext Dynamic.'';
    license = with lib.licenses; [ asl20 ];
  };
}
