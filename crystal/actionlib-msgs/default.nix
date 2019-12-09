
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-crystal-actionlib-msgs";
  version = "0.6.1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/crystal/actionlib_msgs/0.6.1-0.tar.gz";
    name = "0.6.1-0.tar.gz";
    sha256 = "37d6e848b58289db815f06b0dfd3da6e53e9dc5af9e2cf9acb7f023a425cb814";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some message definitions used in the implementation or actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
