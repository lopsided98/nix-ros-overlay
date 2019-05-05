
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-visualization-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/lunar/visualization_msgs/1.12.7-0.tar.gz;
    sha256 = "a8e7e1598d07ce459b53a1b40ef5064a5be642d924e38ebc957a74ae231717e6";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''visualization_msgs is a set of messages used by higher level packages, such as <a href="/wiki/rviz">rviz</a>, that deal in visualization-specific data.

    The main messages in visualization_msgs is <tt>visualization_msgs/Marker</tt>.
    The marker message is used to send visualization &quot;markers&quot; such as boxes, spheres, arrows, lines, etc. to a visualization environment such as <a href="http:///www.ros.org/wiki/rviz">rviz</a>.
    See the rviz tutorial <a href="http://www.ros.org/wiki/rviz/Tutorials">rviz tutorials</a> for more information.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
