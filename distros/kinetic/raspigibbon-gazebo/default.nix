
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, raspigibbon-control, raspigibbon-description }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-gazebo";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/raspberrypigibbon/raspigibbon_sim-release/archive/release/kinetic/raspigibbon_gazebo/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "ba495b2d3b91aca8b10a0f1d24dd403860c24ac36d3fbca6068ae0104e6f5675";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ raspigibbon-control raspigibbon-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_gazebo package'';
    license = with lib.licenses; [ mit ];
  };
}
