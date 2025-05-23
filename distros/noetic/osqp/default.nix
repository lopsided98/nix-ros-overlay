
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-osqp";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/osqp/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "0383942397a0c8a4ab906fb3136552612213edd15c8c436fbed893b34ca850fa";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS wrapper for OSQP";
    license = with lib.licenses; [ "Apache" ];
  };
}
