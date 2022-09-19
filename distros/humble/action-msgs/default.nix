
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-action-msgs";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/humble/action_msgs/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "09cdf842c78c721b7a66c3d20d56a4db229381641749570fb2769cdb977f0e67";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and service definitions common among all ROS actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
