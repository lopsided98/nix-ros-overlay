
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, mavros, geometry-msgs, cmake-modules, catkin, mav-msgs, mavros-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-rotors-hil-interface";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_hil_interface/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "ee4f035b44afcf982354c3740f05087f5dc9c8f2fffee6816a5e9dc435d46fc5";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs mavros geometry-msgs cmake-modules mav-msgs mavros-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs mavros geometry-msgs mav-msgs mavros-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RotorS Hardware-in-the-loop interface package'';
    license = with lib.licenses; [ asl20 ];
  };
}
