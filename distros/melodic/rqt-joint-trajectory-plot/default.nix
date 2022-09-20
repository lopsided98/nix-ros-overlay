
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, moveit-msgs, roslaunch, roslint, rospy, rostest, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-joint-trajectory-plot";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rqt_joint_trajectory_plot-release/archive/release/melodic/rqt_joint_trajectory_plot/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "8ed2a8dd2ebbbaf91dceb82134c324f5efb676ddc2767175967f96361357c77e";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch roslint rostest ];
  propagatedBuildInputs = [ control-msgs moveit-msgs rospy rqt-gui rqt-gui-py trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rqt_joint_trajectory_plot package'';
    license = with lib.licenses; [ mit ];
  };
}
