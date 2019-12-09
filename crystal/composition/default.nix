
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, example-interfaces, rosidl-cmake, ament-cmake-pytest, rcutils, launch, rmw-implementation-cmake, std-msgs, rosidl-default-runtime, launch-testing, ament-lint-common, ament-cmake, class-loader, ament-index-cpp, rosidl-default-generators, rclcpp, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-composition";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/composition/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "c85ad022454c92e1dd338ca1a30bf24033a260aa49eb582b4b022d35becba0e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ example-interfaces rosidl-cmake rcutils std-msgs class-loader ament-index-cpp rclcpp ];
  checkInputs = [ launch rmw-implementation-cmake launch-testing ament-lint-common ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ example-interfaces rcutils rosidl-default-runtime std-msgs class-loader ament-index-cpp rclcpp ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Examples for composing multiple nodes in a single process.'';
    license = with lib.licenses; [ asl20 ];
  };
}
