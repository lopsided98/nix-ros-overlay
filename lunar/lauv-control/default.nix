
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-trajectory-control, catkin, uuv-control-utils, uuv-teleop, lauv-description, uuv-auv-control-allocator }:
buildRosPackage {
  pname = "ros-lunar-lauv-control";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/uuvsimulator/lauv_gazebo-release/archive/release/lunar/lauv_control/0.1.6-0.tar.gz;
    sha256 = "e000c93b136f926a167c9f4e2bfeb2e172ed74fe48261483e6ed13936c283c13";
  };

  propagatedBuildInputs = [ uuv-control-utils lauv-description uuv-auv-control-allocator uuv-trajectory-control uuv-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of configuration and launch files to start controllers for the LAUV.'';
    #license = lib.licenses.Apache-2.0;
  };
}
