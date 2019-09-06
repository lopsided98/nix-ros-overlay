
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rotors-description, rotors-hil-interface, catkin, rotors-evaluation, rotors-control, rqt-rotors, rotors-joy-interface, rotors-gazebo, rotors-comm, rotors-gazebo-plugins }:
buildRosPackage {
  pname = "ros-melodic-rotors-simulator";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_simulator/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "9d38b7e1ce765500cf43571b367e9c04d2bfe3bcb599ba3de81ac5690b855f58";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rotors-description rotors-hil-interface rotors-evaluation rotors-control rqt-rotors rotors-joy-interface rotors-gazebo rotors-comm rotors-gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RotorS is a MAV gazebo simulator.'';
    license = with lib.licenses; [ asl20 ];
  };
}
