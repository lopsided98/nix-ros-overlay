
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-teleop, lauv-description, catkin, uuv-trajectory-control, uuv-control-utils, uuv-auv-control-allocator }:
buildRosPackage {
  pname = "ros-melodic-lauv-control";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/melodic/lauv_control/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "2a5dafaa1dbc26fc3c4d0b91fc39a6a9f822b8ed8c164e5001189c881cac011d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ uuv-teleop lauv-description uuv-trajectory-control uuv-control-utils uuv-auv-control-allocator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of configuration and launch files to start controllers for the LAUV.'';
    license = with lib.licenses; [ asl20 ];
  };
}
