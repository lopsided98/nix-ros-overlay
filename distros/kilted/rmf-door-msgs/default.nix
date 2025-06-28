
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rmf-door-msgs";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/kilted/rmf_door_msgs/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "009c74eed55c6bc4f8dce6bd9d5a66b67c9a93f0eeb80b1f785d308edba97b46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages used to interface to doors";
    license = with lib.licenses; [ asl20 ];
  };
}
