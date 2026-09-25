
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, rclpy, tobas-ssh-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-server";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_server/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "2085d75f228e482009509e678ba395f2d4bcdbc7f9c7beba93bb2b299ecea826";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.paramiko python3Packages.scp rclpy tobas-ssh-msgs ];

  meta = {
    description = "ROS 2 server that exposes remote command execution and file transfer over SSH.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
