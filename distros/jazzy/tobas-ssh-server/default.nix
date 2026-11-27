
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy, tobas-ssh-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-server";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_server/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "166136c22a221f7dcef209357c6012c479fca7605613c874186a14b797119c6f";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.paramiko python3Packages.scp rclpy tobas-ssh-msgs ];

  meta = {
    description = "ROS 2 server that exposes remote command execution and file transfer over SSH.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
