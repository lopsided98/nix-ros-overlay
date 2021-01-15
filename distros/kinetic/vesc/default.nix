
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, vesc-ackermann, vesc-driver, vesc-msgs }:
buildRosPackage {
  pname = "ros-kinetic-vesc";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/f1tenth/vesc-release/archive/release/kinetic/vesc/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "cc26dda747d9423b8fa49d2e4bfe4914e257d6a7e63598dbf49749ab00168918";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ vesc-ackermann vesc-driver vesc-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for ROS interface to the Vedder VESC open source motor controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
