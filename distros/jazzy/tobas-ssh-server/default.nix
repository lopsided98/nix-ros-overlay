
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy, tobas-ssh-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-server";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_server/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "c09114f2d05491c3e984ac558747b305ee8453ebbae18e7b9c54df58e039f816";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.paramiko python3Packages.scp rclpy tobas-ssh-msgs ];

  meta = {
    description = "ROS 2 server that exposes remote command execution and file transfer over SSH.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
