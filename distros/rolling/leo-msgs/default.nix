
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-leo-msgs";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/rolling/leo_msgs/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "ee8c27c85c411d461d22c25db0c923fc68df4788fa91ed7b10303fb2a0216fe9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Message and Service definitions for Leo Rover";
    license = with lib.licenses; [ mit ];
  };
}
