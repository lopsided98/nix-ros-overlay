
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, robot-state-publisher, roslaunch, rostest, rviz, tf, xacro }:
buildRosPackage {
  pname = "ros-melodic-tra1-description";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/melodic/tra1_description/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "cecc2bf7664b6d24ccf9783e0955499ca1a7e21b38f7a0ea38b718fe10bf6f1d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher rviz tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,  etc.) of the TRA1 robot. The files in this package are parsed and used by a variety of other components.  Most users will not interact directly with this package.'';
    license = with lib.licenses; [ "GPL-2.0-only" "CC-BY-SA" ];
  };
}
