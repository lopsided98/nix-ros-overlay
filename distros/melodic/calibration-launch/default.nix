
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interval-intersection, joint-states-settler, laser-cb-detector, monocam-settler, urdfdom-py }:
buildRosPackage {
  pname = "ros-melodic-calibration-launch";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/melodic/calibration_launch/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "eaf7a65341c7be0665741f2d6f22d3e9d6a5a50deb004ffd402434fc2ae715b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ interval-intersection joint-states-settler laser-cb-detector monocam-settler urdfdom-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a collection of launch files that can be helpful in configuring
    the calibration stack to run on your robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
