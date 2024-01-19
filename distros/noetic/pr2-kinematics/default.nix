
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-arm-kinematics }:
buildRosPackage {
  pname = "ros-noetic-pr2-kinematics";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/noetic/pr2_kinematics/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "b560d5ef8d8221b354b4ffc810da347d3a47400ac080cca788c1b08de99a4a05";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-arm-kinematics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_kinematics package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
