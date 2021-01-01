
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, geometry-msgs, libyaml, pythonPackages, ros-pytest, roslint, rospy, rostest, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-store-positions";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_store_positions/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "8bf6b8c834bf6cca1b16bf3d2c9b4dbe7c1df801f3bcdcf646dc04eb0bff12c3";
  };

  buildType = "catkin";
  buildInputs = [ roslint std-msgs ];
  checkInputs = [ code-coverage pythonPackages.mock pythonPackages.pytestcov ros-pytest rostest visualization-msgs ];
  propagatedBuildInputs = [ geometry-msgs libyaml rospy tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Allows to store poses during teach-in.'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
