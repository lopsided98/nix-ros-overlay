
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-command-msgs";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_command_msgs/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "ccd552b442940b4bb079bf131af28e2400c689c0eae6b6e66dc42653da54acd7";
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
