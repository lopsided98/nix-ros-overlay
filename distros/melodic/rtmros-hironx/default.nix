
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hironx-calibration, hironx-moveit-config, hironx-ros-bridge }:
buildRosPackage {
  pname = "ros-melodic-rtmros-hironx";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_hironx-release/archive/release/melodic/rtmros_hironx/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "51824e75419c9acc1c538fc32ee9e387bd0e90a2519ddfe59680665b3146f149";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hironx-calibration hironx-moveit-config hironx-ros-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtmros_hironx package is an operating interface via ROS and OpenRTM, for Hiro and <a href="http://nextage.kawada.jp/en/">NEXTAGE OPEN</a> dual-armed robots from Kawada Industries Inc.
  <br/><br/>
  NOTE for Hiro users: Utilizing this opensource controller for Hiro requires installation both on Controller Box (QNX-based) and Vision PC (Ubuntu Linux), and the steps for it are not shared publicly in order to avoid any possible inconvenience that can easily be caused by slight mis-operation during installation. Please contact <a href="http://opensource-robotics.tokyo.jp/?page_id=56&amp;lang=en">TORK</a> for an advice.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
