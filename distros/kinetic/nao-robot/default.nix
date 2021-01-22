
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nao-apps, nao-bringup, nao-description }:
buildRosPackage {
  pname = "ros-kinetic-nao-robot";
  version = "0.5.15";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/nao_robot-release/archive/release/kinetic/nao_robot/0.5.15-0.tar.gz";
    name = "0.5.15-0.tar.gz";
    sha256 = "10a8b3c97e8d2ca7bcd19bb914b28adda7ca7548df448e239958645cf69dd3eb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nao-apps nao-bringup nao-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>The nao_robot metapackage contains some useful nodes to integrate the Nao humanoid robot into ROS.
    Check out the <a href="http://www.ros.org/wiki/nao_extras">nao_extras stack</a> for more functionality.
    The <a href="http://www.ros.org/wiki/humanoid_navigation"> humanoid_navigation stack</a> contains some more general packages for humanoid/biped robots.</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
