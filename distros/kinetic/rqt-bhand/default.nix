
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bhand-controller, catkin, pythonPackages, rostopic, rqt-gui, rqt-gui-py, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-bhand";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/barrett_hand-release/archive/release/kinetic/rqt_bhand/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "e324a9ecdcabb3c34e3658cfa19fa62afe1789e04d68a57af2b936ab6032caf0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ bhand-controller pythonPackages.rospkg rostopic rqt-gui rqt-gui-py sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_bhand package is intended to test the Barrett Hand in graphical mode'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
