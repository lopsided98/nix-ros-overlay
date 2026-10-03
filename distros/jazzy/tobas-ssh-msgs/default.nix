
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-msgs";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_msgs/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "e51929d33aa850fa6c6e079dd4034b2597af38443c6ba303e1a68c86d551a8d9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 services and actions for SSH command execution and file transfer.";
    license = with lib.licenses; [ asl20 ];
  };
}
