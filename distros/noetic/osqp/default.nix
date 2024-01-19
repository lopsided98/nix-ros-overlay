
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-osqp";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/osqp/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "1a53b444089adea24e199f0c9fc7293499a2576c85528d62bfd749cab78b5edb";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for OSQP'';
    license = with lib.licenses; [ "Apache" ];
  };
}
