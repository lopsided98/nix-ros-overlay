
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-dashing-lifecycle-msgs";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/dashing/lifecycle_msgs/0.7.4-1.tar.gz;
    sha256 = "91e7fcd53f77f409da319de4da6259b7cab40b2841f5494099ddca65f884a5f2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some lifecycle related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
