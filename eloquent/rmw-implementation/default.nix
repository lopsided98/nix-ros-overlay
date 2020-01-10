
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, ament-lint-auto, ament-lint-common, poco, poco-vendor, rcutils, rmw, rmw-connext-cpp, rmw-cyclonedds-cpp, rmw-fastrtps-cpp, rmw-implementation-cmake, rmw-opensplice-cpp }:
buildRosPackage {
  pname = "ros-eloquent-rmw-implementation";
  version = "0.8.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_implementation-release/archive/release/eloquent/rmw_implementation/0.8.2-2.tar.gz";
    name = "0.8.2-2.tar.gz";
    sha256 = "9a9499f1ab8e784bd91ffc7ea43865a3636c25aeca052025933fb68a446d51d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils rmw rmw-connext-cpp rmw-cyclonedds-cpp rmw-fastrtps-cpp rmw-opensplice-cpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python poco poco-vendor rmw-implementation-cmake ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''The decision which ROS middleware implementation should be used for C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}
