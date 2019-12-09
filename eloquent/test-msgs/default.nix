
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, test-interface-files, rosidl-default-runtime, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-gtest, rosidl-default-generators, builtin-interfaces, action-msgs }:
buildRosPackage {
  pname = "ros-eloquent-test-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/eloquent/test_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "c97ae84534fd1d96327578d1fb31a84b982e0acec049dba7faff0a3fa17d42f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ test-interface-files builtin-interfaces action-msgs ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces action-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing message definitions and fixtures used exclusively for testing purposes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
