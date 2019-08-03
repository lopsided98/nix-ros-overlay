
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, urdf, robot-state-publisher, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-melodic-jackal-description";
  version = "0.6.3-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_description/0.6.3-1.tar.gz;
    sha256 = "12dae750592cd3ae4ca0ddff02f0c1556c7cd7174be6955555ebc34e5162b9fc";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
