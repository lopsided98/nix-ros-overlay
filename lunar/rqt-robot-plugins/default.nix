
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-nav-view, rqt-moveit, rqt-rviz, rqt-pose-view, catkin, rqt-tf-tree, rqt-robot-dashboard, rqt-robot-monitor, rqt-robot-steering, rqt-runtime-monitor }:
buildRosPackage {
  pname = "ros-lunar-rqt-robot-plugins";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_robot_plugins-release/archive/release/lunar/rqt_robot_plugins/0.5.7-0.tar.gz;
    sha256 = "2cc4236785fb1505100ed002d2a0da502d70e4b543f6d9e568badd2f160a5f10";
  };

  propagatedBuildInputs = [ rqt-nav-view rqt-rviz rqt-moveit rqt-pose-view rqt-tf-tree rqt-robot-dashboard rqt-robot-monitor rqt-robot-steering rqt-runtime-monitor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of rqt plugins that are particularly used with robots
   during its operation.<br/>
   <br/>
   To run any rqt plugins, just type in a single command &quot;rqt&quot;, then select any plugins you want from the GUI that launches afterwards.<br/>
   <br/>
   rqt consists of three following metapackages:<br/>
    <ul>
     <li><a href="http://ros.org/wiki/rqt">rqt</a> - provides a container window
         where all rqt tools can be docked at. rqt plugin developers barely
         needs to pay attention.</li>
     <li><a href="http://ros.org/wiki/rqt_common_plugins">rqt_common_plugins</a> -
         ROS backend tools suite that can be used on/off of robot runtime.</li>
     <li>rqt_robot_plugins (You're here!)</li>
    </ul>'';
    #license = lib.licenses.BSD;
  };
}
