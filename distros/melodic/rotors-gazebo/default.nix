
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, gazebo-plugins, geometry-msgs, joy, mav-msgs, roscpp, rotors-gazebo-plugins, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-rotors-gazebo";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_gazebo/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "98425c45ee4f84bc43c033c786ad18ea897efda6616cca43f24ad38b3cc5083b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs gazebo-plugins geometry-msgs joy mav-msgs roscpp rotors-gazebo-plugins sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rotors_gazebo package'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
