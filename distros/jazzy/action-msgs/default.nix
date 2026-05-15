
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-core-generators, rosidl-core-runtime, service-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-action-msgs";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/action_msgs/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "34996e5048408e3a84f04b5071eae665a0551dce0e04aac086d5344cecaf96cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-core-runtime service-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = "Messages and service definitions common among all ROS actions.";
    license = with lib.licenses; [ asl20 ];
  };
}
