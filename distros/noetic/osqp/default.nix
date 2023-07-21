
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-osqp";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/osqp/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "6a12b90cf4c67fa1577c63c6733e201fc1a9fcc135cebd0efc18f0c4c4e29843";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for OSQP'';
    license = with lib.licenses; [ "Apache" ];
  };
}
