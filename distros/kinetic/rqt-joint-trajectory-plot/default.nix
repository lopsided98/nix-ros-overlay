
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, roslaunch, roslint, rospy, rostest, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rqt-joint-trajectory-plot";
  version = "0.0.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rqt_joint_trajectory_plot-release/archive/release/kinetic/rqt_joint_trajectory_plot/0.0.2-0.tar.gz";
    name = "0.0.2-0.tar.gz";
    sha256 = "d35e000a94e11dcc409b2718f46f86a5581b381c363e70c693edd02e52e61429";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch roslint rostest ];
  propagatedBuildInputs = [ control-msgs rospy rqt-gui rqt-gui-py trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_joint_trajectory_plot package'';
    license = with lib.licenses; [ mit ];
  };
}
