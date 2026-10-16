
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-msgs";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_msgs/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "8ed2fa18768caeb4a25ba15ecbff0d11f1dfde9f7f71ddb2aa4845ed9ca5165e";
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
