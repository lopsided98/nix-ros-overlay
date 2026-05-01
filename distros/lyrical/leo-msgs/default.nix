
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-leo-msgs";
  version = "3.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/leo_common-release/archive/release/lyrical/leo_msgs/3.2.0-3.tar.gz";
    name = "3.2.0-3.tar.gz";
    sha256 = "1b15afb99762a0ab9c8d1259ba8eed2a970f4966140c6b847a9b3cdd2c50b004";
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
