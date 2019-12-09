
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, urdf, robot-state-publisher, catkin, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-warthog-description";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/kinetic/warthog_description/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "83a365068a304996e6bc0a131d4b9536fab934b94a84eeb15721f201b62f11c5";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ robot-state-publisher xacro urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
