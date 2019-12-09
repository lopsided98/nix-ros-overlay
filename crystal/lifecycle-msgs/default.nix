
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-lint-common, ament-cmake, rosidl-default-generators, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-lifecycle-msgs";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/crystal/lifecycle_msgs/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "ec86038e23f1d594d28cd01935acc4c433f43b22aa0b07d6ffb1e09dd4a3c7f8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some lifecycle related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
