
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-command-msgs";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_command_msgs/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "2c44478d85362e5ca1536c2728307685f3a913533bb27194028314aaeb569f71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime tobas-kdl-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RC command messages.";
    license = with lib.licenses; [ asl20 ];
  };
}
