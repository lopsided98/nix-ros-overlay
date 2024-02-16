
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-leo-msgs";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo_msgs/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "00ace67f110b3bec943d7b68293851e1b1c9a1355ec03b3a15ebec045bec622c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message and Service definitions for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
