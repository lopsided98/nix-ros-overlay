
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-eloquent-std-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/std_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "39f817a1c93add129ff4d7afa13447aaa692b56299b64876dedc9d1eab8a9e2a";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some standard message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
