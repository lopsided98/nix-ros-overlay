
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, geometry-msgs, libyaml, pythonPackages, ros-pytest, roslint, rospy, rostest, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-store-positions";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_store_positions/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "e5b3f77c5955899145e6fd06dc5ba7fab918b651d543aeb27e7b90e4987293f8";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint std-msgs ];
  checkInputs = [ code-coverage pythonPackages.mock pythonPackages.pytestcov ros-pytest rostest visualization-msgs ];
  propagatedBuildInputs = [ geometry-msgs libyaml rospy tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Allows to store poses during teach-in.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
