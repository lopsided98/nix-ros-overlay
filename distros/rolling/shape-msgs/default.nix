
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-shape-msgs";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/shape_msgs/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "0cf7ca4288726cd13bad103f9e53932b165a5563bb5bfcb886df4b3091a59587";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some message definitions which describe geometric shapes.'';
    license = with lib.licenses; [ asl20 ];
  };
}
