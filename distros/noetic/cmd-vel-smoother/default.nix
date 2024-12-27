
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geometry-msgs, roscpp }:
buildRosPackage {
  pname = "ros-noetic-cmd-vel-smoother";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/cmd_vel_smoother/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "5d0336db08d678cbd815726a019c75b1e642042e06599baa7ff5f21a38f90919";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure geometry-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The cmd_vel_smoother package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
