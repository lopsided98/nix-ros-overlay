
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-ssh-authkey, tobas-ssh-client, tobas-ssh-msgs, tobas-ssh-server }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "d67e131476a1f0e8ed3b02cd5f647c436f6aaacdaf7c94a3787f81a6655cb1ef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-ssh-authkey tobas-ssh-client tobas-ssh-msgs tobas-ssh-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for Tobas SSH clients, servers, authentication keys, and ROS 2 interfaces.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
