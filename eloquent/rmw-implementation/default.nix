
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rcutils, rmw-fastrtps-cpp, rmw-implementation-cmake, poco, poco-vendor, ament-lint-common, ament-cmake, ament-lint-auto, rmw-connext-cpp, rmw, rmw-opensplice-cpp, rmw-cyclonedds-cpp, ament-index-python, ament-cmake-python }:
buildRosPackage {
  pname = "ros-eloquent-rmw-implementation";
  version = "0.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/eloquent/rmw_implementation/0.8.2-2.tar.gz";
    name = "0.8.2-2.tar.gz";
    sha256 = "9a9499f1ab8e784bd91ffc7ea43865a3636c25aeca052025933fb68a446d51d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw-fastrtps-cpp rmw-implementation-cmake poco poco-vendor rmw-connext-cpp rmw rmw-opensplice-cpp rmw-cyclonedds-cpp ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ poco poco-vendor ament-index-python rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
