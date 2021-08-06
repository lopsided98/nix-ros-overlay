
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-noetic-rc-visard-description";
  version = "3.2.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_visard-release/archive/release/noetic/rc_visard_description/3.2.3-1.tar.gz";
    name = "3.2.3-1.tar.gz";
    sha256 = "6468fc3852b1f01483e5751ed8f436775f232c07137f8f948981505d6e77137c";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization package for rc_visard'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
