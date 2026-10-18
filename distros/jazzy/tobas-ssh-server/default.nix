
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy, tobas-ssh-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-server";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_server/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "bdc93783c36474241be998f8b4f0a5058710621f0ea6f3ba55212145075d896b";
  };

  buildType = "ament_python";
  checkInputs = [ python3Packages.pytest ];
  propagatedBuildInputs = [ python3Packages.paramiko python3Packages.scp rclpy tobas-ssh-msgs ];

  meta = {
    description = "ROS 2 server that exposes remote command execution and file transfer over SSH.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
