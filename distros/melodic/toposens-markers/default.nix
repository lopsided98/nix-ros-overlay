
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, message-runtime, roscpp, roslaunch, rospy, rostest, rviz, rviz-visual-tools, toposens-description, toposens-driver, toposens-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-markers";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/melodic/toposens_markers/2.0.4-1";
    name = "archive.tar.gz";
    sha256 = "135dd96e3468ab3caf9e08a9e0cd8cc7cf93070c075aed26f1e8ec18b270de6b";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure message-runtime roscpp rospy rviz rviz-visual-tools toposens-description toposens-driver toposens-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz integration for TS sensor data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
