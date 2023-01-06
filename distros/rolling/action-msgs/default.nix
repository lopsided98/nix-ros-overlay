
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-action-msgs";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/action_msgs/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "d76dd2eb790fb5cea37582916c4998af33f89640ba05d19d5c09678c43603c09";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-core-runtime unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = ''Messages and service definitions common among all ROS actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
