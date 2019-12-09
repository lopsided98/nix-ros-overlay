
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-state-publisher, sensor-msgs, robot-state-publisher, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-description";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_description/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "3abc818c0e94231fb971b1a18371a661294f24bdc26ebfb55d5586c487d8777d";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roscpp ];
  propagatedBuildInputs = [ robot-state-publisher joint-state-publisher sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D models of the RH-P12-RN for simulation and visualization'';
    license = with lib.licenses; [ asl20 ];
  };
}
