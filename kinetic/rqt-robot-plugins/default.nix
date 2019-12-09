
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-robot-steering, rqt-runtime-monitor, catkin, rqt-rviz, rqt-robot-dashboard, rqt-pose-view, rqt-tf-tree, rqt-nav-view, rqt-robot-monitor, rqt-moveit }:
buildRosPackage {
  pname = "ros-kinetic-rqt-robot-plugins";
  version = "0.5.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_robot_plugins-release/archive/release/kinetic/rqt_robot_plugins/0.5.7-0.tar.gz";
    name = "0.5.7-0.tar.gz";
    sha256 = "5e1285f5dc2f987c461d9133d5b42b116c2512ee2d20b6ae92d99a3aac9d029a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-robot-steering rqt-runtime-monitor rqt-rviz rqt-robot-dashboard rqt-pose-view rqt-tf-tree rqt-nav-view rqt-robot-monitor rqt-moveit ];
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
