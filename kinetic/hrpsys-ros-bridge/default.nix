
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, collada-urdf, geometry-msgs, procps, tf, image-transport, rqt-gui-py, rosbuild, nav-msgs, rostest, rqt-gui, sensor-msgs, diagnostic-msgs, dynamic-reconfigure, robot-state-publisher, camera-info-manager, rqt-robot-dashboard, rqt-robot-monitor, diagnostic-aggregator, rtmbuild, pr2-msgs, hrpsys, pythonPackages, catkin, euscollada, roscpp, roslang, hrpsys-tools, message-generation, pkg-config, angles, control-msgs, git, rosnode, hostname, actionlib, nettools, visualization-msgs, robot-pose-ekf, subversion, mk }:
buildRosPackage {
  pname = "ros-kinetic-hrpsys-ros-bridge";
  version = "1.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/hrpsys_ros_bridge/1.4.2-0.tar.gz";
    name = "1.4.2-0.tar.gz";
    sha256 = "5fc34e800e09ca71d1e2613d972034ef0507d7b1bd0713aadc46e9bb02660eca";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs collada-urdf procps tf image-transport rqt-gui-py rosbuild nav-msgs rostest rqt-gui sensor-msgs diagnostic-msgs dynamic-reconfigure pythonPackages.rosdep robot-state-publisher camera-info-manager rqt-robot-dashboard rqt-robot-monitor diagnostic-aggregator rtmbuild pr2-msgs hrpsys euscollada roscpp roslang hrpsys-tools message-generation pkg-config angles control-msgs git rosnode hostname actionlib nettools visualization-msgs robot-pose-ekf subversion mk ];
  propagatedBuildInputs = [ geometry-msgs collada-urdf pythonPackages.ipython tf image-transport rqt-gui-py nav-msgs rostest rqt-gui sensor-msgs diagnostic-msgs dynamic-reconfigure robot-state-publisher camera-info-manager rqt-robot-dashboard rqt-robot-monitor diagnostic-aggregator rtmbuild pr2-msgs hrpsys roscpp hrpsys-tools control-msgs rosnode actionlib visualization-msgs robot-pose-ekf pythonPackages.psutil ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hrpsys_ros_bridge package provides basic functionalities to bind
  	<a href="http://wiki.ros.org/hrpsys">hrpsys</a>, a 
  	<a href="http://openrtm.org/">OpenRTM</a>-based controller, and ROS.<br/> 
    By using this package, you can write your ROS packages that communicate with your
    non-ROS robots that run on hrpsys.
  		
    For communicating with the robots that run on OpenRTM without hrpsys,
  	you can use <a href="http://wiki.ros.org/openrtm_ros_bridge">openrtm_ros_bridge</a>
  	package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
