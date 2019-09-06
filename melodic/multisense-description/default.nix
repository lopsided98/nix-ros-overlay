
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-multisense-description";
  version = "4.0.2";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_description/4.0.2-0.tar.gz";
    name = "4.0.2-0.tar.gz";
    sha256 = "373f9f158ad72ceeab6812656bf4a4aa64bc30ec54d4587856e26c86e14ac766";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
