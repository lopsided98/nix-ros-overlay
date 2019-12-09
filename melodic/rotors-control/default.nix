
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, dynamic-reconfigure, cmake-modules, catkin, mav-msgs, roscpp, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-rotors-control";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_control/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "360134fe15fab3cd01a1869458c0d767006f445a2124532ac6b0c2484e4cc38f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure cmake-modules mav-msgs roscpp nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs dynamic-reconfigure cmake-modules mav-msgs roscpp nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RotorS control package'';
    license = with lib.licenses; [ asl20 ];
  };
}
