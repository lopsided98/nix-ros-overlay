
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-configuration-gazebo, pr2-gazebo, pr2-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-pr2-simulator";
  version = "2.0.14";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_simulator-release/archive/release/melodic/pr2_simulator/2.0.14-0.tar.gz";
    name = "2.0.14-0.tar.gz";
    sha256 = "4502d2d3680adc3ad5bb876120527c7deb7642208da743e0c853353d8524b0cc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2-controller-configuration-gazebo pr2-gazebo pr2-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_simulator package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
