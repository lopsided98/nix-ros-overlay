
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosdiagnostic";
  version = "1.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/noetic/rosdiagnostic/1.10.4-1.tar.gz";
    name = "1.10.4-1.tar.gz";
    sha256 = "02b36867f60e1ee9c6236d2271a2ceeb7ff7b937f993d0c8f6c7d167fd904676";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command to print aggregated diagnostic contents to the command line'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
