
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake, rmw-implementation-cmake, rcutils, ament-lint-common, launch-testing, class-loader, rosidl-default-generators, launch, rosidl-cmake, example-interfaces, rclcpp, ament-index-cpp, std-msgs, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-composition";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/crystal/composition/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "c85ad022454c92e1dd338ca1a30bf24033a260aa49eb582b4b022d35becba0e9";
  };

  buildType = "ament_cmake";
  buildInputs = [ class-loader rosidl-cmake rclcpp example-interfaces ament-index-cpp std-msgs rcutils ];
  checkInputs = [ ament-cmake-pytest rmw-implementation-cmake ament-lint-common launch-testing launch ament-lint-auto ];
  propagatedBuildInputs = [ rcutils class-loader example-interfaces rclcpp ament-index-cpp std-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Examples for composing multiple nodes in a single process.'';
    license = with lib.licenses; [ asl20 ];
  };
}
