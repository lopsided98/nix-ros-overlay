
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-msgs, pluginlib, catkin, roscpp, std-msgs, nodelet, yocs-controllers }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-controller-tutorial";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_controller_tutorial/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "d8730b6deff7796f6ff5b112341331ebe49b6fd2bf4a89cbc87893f5d2bd798e";
  };

  buildType = "catkin";
  buildInputs = [ kobuki-msgs pluginlib roscpp std-msgs nodelet yocs-controllers ];
  propagatedBuildInputs = [ kobuki-msgs pluginlib nodelet std-msgs roscpp yocs-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Code for the Kobuki controller tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
