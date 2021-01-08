
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf-jsk-patch, gazebo-ros, pythonPackages, roseus, rostest }:
buildRosPackage {
  pname = "ros-melodic-eusurdf";
  version = "0.4.3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/eusurdf/0.4.3-0.tar.gz";
    name = "0.4.3-0.tar.gz";
    sha256 = "47f6b8cfb42f9516ed0993922e6f3059cb387fa533cda56fed5e2fb81937f395";
  };

  buildType = "catkin";
  buildInputs = [ roseus ];
  propagatedBuildInputs = [ collada-urdf-jsk-patch gazebo-ros pythonPackages.lxml rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
