
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, camera-info-manager, catkin, collada-urdf, control-msgs, diagnostic-aggregator, diagnostic-msgs, dynamic-reconfigure, euscollada, geometry-msgs, git, hostname, hrpsys, hrpsys-tools, image-transport, message-generation, mk, nav-msgs, nettools, pkg-config, pr2-controllers-msgs, pr2-msgs, procps, pythonPackages, robot-pose-ekf, robot-state-publisher, rosbuild, roscpp, roslang, rosnode, rostest, rqt-gui, rqt-gui-py, rqt-robot-dashboard, rqt-robot-monitor, rtmbuild, sensor-msgs, subversion, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-hrpsys-ros-bridge";
  version = "1.4.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_common-release";
        rev = "release/melodic/hrpsys_ros_bridge/1.4.3-1";
        sha256 = "sha256-biH7RPenq/Ew2ip/Oy2fm+lCl14PtG/rbruVsNz7LeI=";
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
