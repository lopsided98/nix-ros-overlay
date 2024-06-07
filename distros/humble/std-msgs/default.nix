
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-std-msgs";
  version = "4.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/std_msgs/4.2.4-1.tar.gz";
    name = "4.2.4-1.tar.gz";
    sha256 = "56c156205d43e65f902c681c9972743d2bee904f11ac0d4e9cdee2535b255910";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some standard message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
