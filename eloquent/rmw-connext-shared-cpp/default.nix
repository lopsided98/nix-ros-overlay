
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-cmake, rcutils, ament-lint-common, ament-cmake, rcpputils, rmw, connext-cmake-module, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rmw-connext-shared-cpp";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_connext-release/archive/release/eloquent/rmw_connext_shared_cpp/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "03fd291490115758f5fbf8f55d8d8af7cd99cd3ce3ee4bc5fe7f11faf4fd5ecd";
  };

  buildType = "ament_cmake";
  buildInputs = [ connext-cmake-module rcpputils rcutils rmw ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ connext-cmake-module ament-cmake ];
  nativeBuildInputs = [ rosidl-cmake ament-cmake ];

  meta = {
    description = ''C++ types and functions shared by the ROS middleware interface to RTI Connext Static and RTI Connext Dynamic.'';
    license = with lib.licenses; [ asl20 ];
  };
}
