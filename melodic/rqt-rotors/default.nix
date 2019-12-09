
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui, catkin, mavros-msgs, rqt-gui-py, rospy }:
buildRosPackage {
  pname = "ros-melodic-rqt-rotors";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rqt_rotors/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "fd26afa06f8f7acd5dcc50aeab04521d73b266f1b921150cdd675cdf62a9c840";
  };

  buildType = "catkin";
  buildInputs = [ rqt-gui rospy mavros-msgs rqt-gui-py ];
  propagatedBuildInputs = [ rqt-gui mavros-msgs rospy rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_rotors package'';
    license = with lib.licenses; [ asl20 ];
  };
}
