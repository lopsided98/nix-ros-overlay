
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ps3joy, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uos-diffdrive-teleop";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/kinetic/uos_diffdrive_teleop/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "e34befd57cb66e4d83a4521694a0d0c8b8e328820358396dc9dcba575ce35292";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs ps3joy roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uos_diffdrive_teleop'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
