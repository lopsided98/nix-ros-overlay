
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, toposens-driver, code-coverage, toposens-msgs, catkin, rospy, roscpp, message-runtime, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-melodic-toposens-sync";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_sync/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "f71925faff63247c04fb1515e0441521fa536159c58ed7fe91a140233ff55b51";
  };

  buildType = "catkin";
  buildInputs = [ toposens-driver toposens-msgs rospy roscpp message-runtime ];
  checkInputs = [ code-coverage roslaunch rostest ];
  propagatedBuildInputs = [ toposens-driver toposens-msgs rospy roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Operational sync of multiple TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
