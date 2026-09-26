
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-msgs";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_msgs/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "270f0b64f029ee3a96769f5c2db16cc370d51bbed73ea4916a7646ee54710b56";
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
