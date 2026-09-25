
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-ros2-tools, tobas-ssh-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-client";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_client/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "61ba23a2a17f834a2e7d283161f27bb7a73287eed39bec295dd10cf7d13b98fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-ros2-tools tobas-ssh-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 client for remote command execution and file transfer over SSH.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
