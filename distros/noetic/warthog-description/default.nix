
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpr-onav-description, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-warthog-description";
  version = "0.1.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/noetic/warthog_description/0.1.9-1.tar.gz";
    name = "0.1.9-1.tar.gz";
    sha256 = "9448f8680adba257bf7dae13f5424b89adcd42d4dd2f4b00af3275c291214143";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ cpr-onav-description robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "URDF robot description for Warthog";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
