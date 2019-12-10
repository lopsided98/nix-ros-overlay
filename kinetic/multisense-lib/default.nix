
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng12 }:
buildRosPackage {
  pname = "ros-kinetic-multisense-lib";
  version = "4.0.0";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_lib/4.0.0-0.tar.gz";
    name = "4.0.0-0.tar.gz";
    sha256 = "61612458f72d81d91f80bd87186b457a672a1ed8039a4732c151c6d507d4a539";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge libpng12 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
