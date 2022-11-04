
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rotors-comm, rotors-control, rotors-description, rotors-evaluation, rotors-gazebo, rotors-gazebo-plugins, rotors-hil-interface, rotors-joy-interface, rqt-rotors }:
buildRosPackage {
  pname = "ros-melodic-rotors-simulator";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_simulator/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "9d38b7e1ce765500cf43571b367e9c04d2bfe3bcb599ba3de81ac5690b855f58";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rotors-comm rotors-control rotors-description rotors-evaluation rotors-gazebo rotors-gazebo-plugins rotors-hil-interface rotors-joy-interface rqt-rotors ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RotorS is a MAV gazebo simulator.'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
