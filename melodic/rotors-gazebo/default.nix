
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, sensor-msgs, xacro, geometry-msgs, rotors-gazebo-plugins, catkin, mav-msgs, gazebo-msgs, roscpp, gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-rotors-gazebo";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_gazebo/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "98425c45ee4f84bc43c033c786ad18ea897efda6616cca43f24ad38b3cc5083b";
  };

  buildType = "catkin";
  buildInputs = [ joy sensor-msgs xacro geometry-msgs rotors-gazebo-plugins mav-msgs gazebo-msgs roscpp gazebo-plugins ];
  propagatedBuildInputs = [ joy sensor-msgs xacro geometry-msgs rotors-gazebo-plugins mav-msgs gazebo-msgs roscpp gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rotors_gazebo package'';
    license = with lib.licenses; [ asl20 ];
  };
}
