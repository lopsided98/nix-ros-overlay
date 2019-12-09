
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, diagnostic-msgs, catkin }:
buildRosPackage {
  pname = "ros-melodic-rosdiagnostic";
  version = "1.9.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/diagnostics-release/archive/release/melodic/rosdiagnostic/1.9.3-0.tar.gz";
    name = "1.9.3-0.tar.gz";
    sha256 = "1244881acaaeb2251f829e4705bbf88e5d1f99d161d24a4ab99bae9a138b85c5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy diagnostic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Command to print aggregated diagnostic contents to the command line'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
