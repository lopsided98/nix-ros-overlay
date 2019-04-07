
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, rospy, mavros-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-rotors";
  version = "2.2.3";

  src = fetchurl {
    url = https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rqt_rotors/2.2.3-0.tar.gz;
    sha256 = "fd26afa06f8f7acd5dcc50aeab04521d73b266f1b921150cdd675cdf62a9c840";
  };

  buildInputs = [ rqt-gui-py rqt-gui mavros-msgs rospy ];
  propagatedBuildInputs = [ rqt-gui-py rqt-gui mavros-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_rotors package'';
    #license = lib.licenses.ASL 2.0;
  };
}
