
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, unique-identifier-msgs, ament-cmake, ament-lint-common, rosidl-default-generators, ament-lint-auto, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-crystal-action-msgs";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/crystal/action_msgs/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "f2e941f36e7ab54f4f676606371c1ded0d3cc072721e14669c47cc66897fdd4d";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces unique-identifier-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime unique-identifier-msgs ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''Messages and service definitions common among all ROS actions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
