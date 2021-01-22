
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, p2os-driver, p2os-msgs, p2os-teleop, p2os-urdf }:
buildRosPackage {
  pname = "ros-kinetic-p2os-launch";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_launch/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "ec50d96f2ce3bcb87ece34f9db483d72e10f4cd7384faa4fa88ab9750793a3ca";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ p2os-driver p2os-msgs p2os-teleop p2os-urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and config files designed for use with the p2os stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
