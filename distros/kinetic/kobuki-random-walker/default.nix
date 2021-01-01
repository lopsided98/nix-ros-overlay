
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-threads, geometry-msgs, kobuki-msgs, nodelet, pluginlib, roscpp, std-msgs, yocs-cmd-vel-mux, yocs-controllers }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-random-walker";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_random_walker/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "fdd6297d90e2f4c99ab99b1bf14e005bdef6d53ba10e06ecc571f26b1703cb8a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-threads geometry-msgs kobuki-msgs nodelet pluginlib roscpp std-msgs yocs-cmd-vel-mux yocs-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Random walker app for Kobuki'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
