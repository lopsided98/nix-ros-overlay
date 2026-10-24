
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, tobas-kdl-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-command-msgs";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_command_msgs/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "27f1f9a67645cf94be276a44d52429f956b8d4708f7f58e386003d4d8d4e57f1";
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
