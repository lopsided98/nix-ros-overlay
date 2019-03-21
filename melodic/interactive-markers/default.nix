
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, catkin, roscpp, rostest, visualization-msgs, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-interactive-markers";
  version = "1.11.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/interactive_markers-release/archive/release/melodic/interactive_markers/1.11.4-0.tar.gz;
    sha256 = "600001c06acb4e88fe5c9f512476d50b41a795356643bb02e528748b158b81f8";
  };

  propagatedBuildInputs = [ rostest rosconsole visualization-msgs rospy std-msgs tf roscpp ];
  nativeBuildInputs = [ rostest rosconsole visualization-msgs rospy std-msgs catkin tf roscpp ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    #license = lib.licenses.BSD;
  };
}
