
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, p2os-driver, p2os-msgs, p2os-teleop, p2os-urdf }:
buildRosPackage {
  pname = "ros-noetic-p2os-launch";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/noetic/p2os_launch/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "c542a66eae4be418f4ca606d7b4656b9dd4ad762ec86178959ab16bc2c4d57f3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ p2os-driver p2os-msgs p2os-teleop p2os-urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and config files designed for use with the p2os stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
