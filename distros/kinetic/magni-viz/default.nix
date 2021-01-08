
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-kinetic-magni-viz";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/magni_viz/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "2caa633fa92905b7a96ef14a80be6e46a9035b2437a8ecac57157e2523d63a17";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The magni_viz package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
