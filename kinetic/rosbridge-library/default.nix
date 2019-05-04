
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, actionlib-msgs, rosservice, rosgraph, rospy, diagnostic-msgs, geometry-msgs, stereo-msgs, pythonPackages, message-generation, message-runtime, std-srvs, trajectory-msgs, catkin, nav-msgs, std-msgs, roscpp, visualization-msgs, sensor-msgs, rostest, rostopic, rospy-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-rosbridge-library";
  version = "0.11.0";

  src = fetchurl {
    url = https://github.com/RobotWebTools-release/rosbridge_suite-release/archive/release/kinetic/rosbridge_library/0.11.0-0.tar.gz;
    sha256 = "7785ed45247be6c70a032cc9a6806c71857b2bd9358d62878f5d1717a40ad32b";
  };

  buildInputs = [ std-msgs pythonPackages.pillow message-generation geometry-msgs ];
  checkInputs = [ std-srvs tf2-msgs actionlib-msgs trajectory-msgs sensor-msgs rostest nav-msgs diagnostic-msgs visualization-msgs rospy-tutorials stereo-msgs ];
  propagatedBuildInputs = [ rosservice rosgraph rostopic message-runtime rospy std-msgs pythonPackages.pillow roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The core rosbridge package, repsonsible for interpreting JSON andperforming
    the appropriate ROS action, like subscribe, publish, call service, and
    interact with params.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
