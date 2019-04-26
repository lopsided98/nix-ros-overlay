
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-trajectory-control, catkin, uuv-control-utils, uuv-teleop, lauv-description, uuv-auv-control-allocator }:
buildRosPackage {
  pname = "ros-kinetic-lauv-control";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/kinetic/lauv_control/0.1.6-0.tar.gz;
    sha256 = "c00c04351a8cf6b9a060fb1676910948b81c8e07608b997ecc84018d22d5085a";
  };

  propagatedBuildInputs = [ uuv-control-utils lauv-description uuv-auv-control-allocator uuv-trajectory-control uuv-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of configuration and launch files to start controllers for the LAUV.'';
    #license = lib.licenses.Apache-2.0;
  };
}
