
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, tf, catkin, rosconsole, visualization-msgs, roscpp, rospy, rostest }:
buildRosPackage {
  pname = "ros-melodic-interactive-markers";
  version = "1.11.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/interactive_markers-release/archive/release/melodic/interactive_markers/1.11.4-0.tar.gz";
    name = "1.11.4-0.tar.gz";
    sha256 = "600001c06acb4e88fe5c9f512476d50b41a795356643bb02e528748b158b81f8";
  };

  buildType = "catkin";
  buildInputs = [ rostest std-msgs tf visualization-msgs roscpp rospy rosconsole ];
  propagatedBuildInputs = [ rostest std-msgs tf visualization-msgs roscpp rospy rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''3D interactive marker communication library for RViz and similar tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
