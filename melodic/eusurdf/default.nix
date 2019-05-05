
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, gazebo-ros, catkin, pythonPackages, rostest, collada-urdf-jsk-patch }:
buildRosPackage {
  pname = "ros-melodic-eusurdf";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_model_tools-release/archive/release/melodic/eusurdf/0.4.3-0.tar.gz;
    sha256 = "47f6b8cfb42f9516ed0993922e6f3059cb387fa533cda56fed5e2fb81937f395";
  };

  buildInputs = [ roseus gazebo-ros rostest pythonPackages.lxml collada-urdf-jsk-patch ];
  propagatedBuildInputs = [ gazebo-ros rostest collada-urdf-jsk-patch pythonPackages.lxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''urdf models converted from euslisp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
