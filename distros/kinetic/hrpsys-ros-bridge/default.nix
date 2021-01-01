
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, camera-info-manager, catkin, collada-urdf, control-msgs, diagnostic-aggregator, diagnostic-msgs, dynamic-reconfigure, euscollada, geometry-msgs, git, hostname, hrpsys, hrpsys-tools, image-transport, message-generation, mk, nav-msgs, nettools, pkg-config, pr2-msgs, procps, pythonPackages, robot-pose-ekf, robot-state-publisher, rosbuild, roscpp, roslang, rosnode, rostest, rqt-gui, rqt-gui-py, rqt-robot-dashboard, rqt-robot-monitor, rtmbuild, sensor-msgs, subversion, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-hrpsys-ros-bridge";
  version = "1.4.2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/kinetic/hrpsys_ros_bridge/1.4.2-0.tar.gz";
    name = "1.4.2-0.tar.gz";
    sha256 = "5fc34e800e09ca71d1e2613d972034ef0507d7b1bd0713aadc46e9bb02660eca";
  };

  buildType = "catkin";
  buildInputs = [ angles euscollada git hostname message-generation mk nettools pkg-config procps pythonPackages.rosdep rosbuild roslang subversion ];
  propagatedBuildInputs = [ actionlib camera-info-manager collada-urdf control-msgs diagnostic-aggregator diagnostic-msgs dynamic-reconfigure geometry-msgs hrpsys hrpsys-tools image-transport nav-msgs pr2-msgs pythonPackages.ipython pythonPackages.psutil robot-pose-ekf robot-state-publisher roscpp rosnode rostest rqt-gui rqt-gui-py rqt-robot-dashboard rqt-robot-monitor rtmbuild sensor-msgs tf visualization-msgs ];
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
