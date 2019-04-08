
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hrpsys, git, rqt-gui, subversion, rqt-robot-monitor, actionlib, diagnostic-msgs, tf, geometry-msgs, procps, collada-urdf, euscollada, image-transport, pythonPackages, pkg-config, message-generation, robot-pose-ekf, roslang, robot-state-publisher, angles, hrpsys-tools, nettools, pr2-msgs, rqt-gui-py, control-msgs, camera-info-manager, mk, rosbuild, catkin, nav-msgs, diagnostic-aggregator, roscpp, visualization-msgs, rosnode, hostname, sensor-msgs, rostest, rqt-robot-dashboard, dynamic-reconfigure, rtmbuild }:
buildRosPackage {
  pname = "ros-kinetic-hrpsys-ros-bridge";
  version = "1.4.2";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/hrpsys_ros_bridge/1.4.2-0.tar.gz;
    sha256 = "5fc34e800e09ca71d1e2613d972034ef0507d7b1bd0713aadc46e9bb02660eca";
  };

  buildInputs = [ hrpsys git rqt-gui subversion rqt-robot-monitor actionlib diagnostic-msgs tf geometry-msgs procps collada-urdf euscollada image-transport pkg-config message-generation robot-pose-ekf roslang robot-state-publisher angles hrpsys-tools nettools pr2-msgs rqt-gui-py control-msgs camera-info-manager pythonPackages.rosdep mk rosbuild nav-msgs diagnostic-aggregator roscpp visualization-msgs rosnode hostname sensor-msgs rostest rqt-robot-dashboard dynamic-reconfigure rtmbuild ];
  propagatedBuildInputs = [ rqt-gui-py control-msgs hrpsys camera-info-manager rqt-gui pythonPackages.ipython nav-msgs rqt-robot-monitor dynamic-reconfigure actionlib diagnostic-msgs diagnostic-aggregator tf roscpp visualization-msgs geometry-msgs rosnode pythonPackages.psutil collada-urdf image-transport sensor-msgs rostest rqt-robot-dashboard robot-pose-ekf robot-state-publisher hrpsys-tools pr2-msgs rtmbuild ];
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
    #license = lib.licenses.BSD;
  };
}
