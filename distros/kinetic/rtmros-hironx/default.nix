
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hironx-calibration, hironx-moveit-config, hironx-ros-bridge }:
buildRosPackage {
  pname = "ros-kinetic-rtmros-hironx";
  version = "2.1.1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_hironx-release/archive/release/kinetic/rtmros_hironx/2.1.1-0.tar.gz";
    name = "2.1.1-0.tar.gz";
    sha256 = "b397cbea54bf7efe65e5d546a1cca50ca7b37899ad111c6729fd6e8b53abb38f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hironx-calibration hironx-moveit-config hironx-ros-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtmros_hironx package is an operating interface via ROS and OpenRTM, for Hiro and <a href="http://nextage.kawada.jp/en/">NEXTAGE OPEN</a> dual-armed robots from Kawada Industries Inc.
  <br/><br/>
  NOTE for Hiro users: Utilizing this opensource controller for Hiro requires installation both on Controller Box (QNX-based) and Vision PC (Ubuntu Linux), and the steps for it are not shared publicly in order to avoid any possible inconvenience that can easily be caused by slight mis-operation during installation. Please contact <a href="http://opensource-robotics.tokyo.jp/?page_id=56&amp;lang=en">TORK</a> for an advice.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
