
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, vesc-ackermann, vesc-driver, vesc-msgs }:
buildRosPackage {
  pname = "ros-melodic-vesc";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/melodic/vesc/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ae523ded38e9e6b6a650cfa5b6b6f122f9a5cbc80b69aebae298e3c87dd81d4e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ vesc-ackermann vesc-driver vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for ROS interface to the Vedder VESC open source motor controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
