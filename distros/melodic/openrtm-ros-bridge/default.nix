
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, openrtm-tools, roscpp, rostest, rtmbuild, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-openrtm-ros-bridge";
  version = "1.4.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_common-release";
        rev = "release/melodic/openrtm_ros_bridge/1.4.3-1";
        sha256 = "sha256-c3d873WJBsJSpVjs9N57UVc+T8hmqSlDTVfVo1yk1zI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation rostest rtmbuild ];
  propagatedBuildInputs = [ openrtm-tools roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''openrtm_ros_bridge package provides basic functionalities to bind
    two robotics framework: <a href="http://openrtm.org/">OpenRTM</a> and ROS.<br/>
    By using this package, you can write your ROS packages that communicate with your
    non-ROS robots that run on OpenRTM.
  		
    For communicating with the robots that run on hrpsys, you can use
    <a href="http://wiki.ros.org/hrpsys_ros_bridge">hrpsys_ros_bridge</a> package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
