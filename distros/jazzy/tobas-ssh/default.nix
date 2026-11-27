
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-ssh-authkey, tobas-ssh-client, tobas-ssh-msgs, tobas-ssh-server }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "244c4d8655d2a3907f60443fe11faf4b89d77e16a808919ada4d81a470538027";
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
