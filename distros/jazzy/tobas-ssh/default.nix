
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-ssh-authkey, tobas-ssh-client, tobas-ssh-msgs, tobas-ssh-server }:
buildRosPackage {
  pname = "ros-jazzy-tobas-ssh";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_ssh/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "f7ad3e826db3c66e2b1429dcd9d5b4a3d65f39081bd671992201b41265dc8df9";
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
