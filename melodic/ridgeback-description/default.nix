
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lms1xx, urdf, robot-state-publisher, roslaunch, xacro }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-description";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/melodic/ridgeback_description/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "c42a5de9d035df2856a1a1308d58ecd190ed087c9bb0ffc2ae7fd25385bf1c70";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ lms1xx urdf xacro robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
