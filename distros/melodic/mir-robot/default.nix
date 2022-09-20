
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mir-actions, mir-description, mir-driver, mir-dwb-critics, mir-gazebo, mir-msgs, mir-navigation, sdc21x0 }:
buildRosPackage {
  pname = "ros-melodic-mir-robot";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/melodic/mir_robot/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "6e91f38eadf2552b84a889933e602455aa0a6236a27db8f6d33974b85bf9c279";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mir-actions mir-description mir-driver mir-dwb-critics mir-gazebo mir-msgs mir-navigation sdc21x0 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description, Gazebo simulation, navigation, bringup launch files, message and action descriptions for the MiR100 robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
