
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, camera-info-manager, catkin, collada-urdf, control-msgs, diagnostic-aggregator, diagnostic-msgs, dynamic-reconfigure, euscollada, geometry-msgs, git, hostname, hrpsys, hrpsys-tools, image-transport, message-generation, mk, nav-msgs, nettools, pkg-config, pr2-controllers-msgs, pr2-msgs, procps, pythonPackages, robot-pose-ekf, robot-state-publisher, rosbuild, roscpp, roslang, rosnode, rostest, rqt-gui, rqt-gui-py, rqt-robot-dashboard, rqt-robot-monitor, rtmbuild, sensor-msgs, subversion, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-hrpsys-ros-bridge";
  version = "1.4.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_common-release/archive/release/melodic/hrpsys_ros_bridge/1.4.3-1.tar.gz";
    name = "1.4.3-1.tar.gz";
    sha256 = "6952e7f4b1edeb8a7a51d03a8c1e082775257a5ed9e6a79ab3a7e8da680fb7bc";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin euscollada git hostname message-generation mk nettools pkg-config procps pythonPackages.rosdep rosbuild roslang subversion ];
  propagatedBuildInputs = [ actionlib camera-info-manager collada-urdf control-msgs diagnostic-aggregator diagnostic-msgs dynamic-reconfigure geometry-msgs hrpsys hrpsys-tools image-transport nav-msgs pr2-controllers-msgs pr2-msgs pythonPackages.ipython pythonPackages.psutil robot-pose-ekf robot-state-publisher roscpp rosnode rostest rqt-gui rqt-gui-py rqt-robot-dashboard rqt-robot-monitor rtmbuild sensor-msgs tf visualization-msgs ];
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
