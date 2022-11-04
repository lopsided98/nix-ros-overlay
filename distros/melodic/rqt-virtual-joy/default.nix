
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rqt-gui, rqt-gui-py, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-virtual-joy";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/aquahika/rqt_virtual_joystick-release/archive/release/melodic/rqt_virtual_joy/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "493513036a5a34f777bce227efa92908ea7e93392d784f7e427a0950f2a3c4d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rqt-gui rqt-gui-py sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_virtual_joy package'';
    license = with lib.licenses; [ mit ];
  };
}
