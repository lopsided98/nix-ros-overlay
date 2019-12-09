
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, ament-lint-common, ament-cmake, rosidl-default-generators, builtin-interfaces }:
buildRosPackage {
  pname = "ros-dashing-std-msgs";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/dashing/std_msgs/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "dfca614c909c05a342e724bd59ecd60b63b12d1997cfde579dc56b58da750ed2";
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
