
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-threads, geometry-msgs, kobuki-msgs, nodelet, pluginlib, roscpp, std-msgs, yocs-controllers }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-safety-controller";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_safety_controller/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "8a33921af46704980110c752c39f1b9e0837907951ecd9efa229973f6d215229";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-threads geometry-msgs kobuki-msgs nodelet pluginlib roscpp std-msgs yocs-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A controller ensuring the safe operation of Kobuki.

    The SafetyController keeps track of bumper, cliff and wheel drop events. In case of the first two,
    Kobuki is commanded to move back. In the latter case, Kobuki is stopped.
    
    This controller can be enabled/disabled.
    The safety states (bumper pressed etc.) can be reset. WARNING: Dangerous!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
