
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, toposens-driver, rostest, message-runtime, toposens-msgs, rospy, code-coverage, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-melodic-toposens-sync";
  version = "1.2.2-r1";

  src = fetchurl {
    url = https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_sync/1.2.2-1;
    sha256 = "4251ed7ba71c7e1eb5745bc99a829251d018afd74f8fac8ad5d3c23d38b21250";
  };

  buildInputs = [ toposens-driver message-runtime toposens-msgs rospy roscpp ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ toposens-driver message-runtime toposens-msgs rospy roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Operational sync of multiple TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
