
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-ros2-tools, tobas-ssh-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh-client";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh_client/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "f5f075419f0aade2abe490280342748977c593fa1b72834c2a874e8362a16fda";
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
