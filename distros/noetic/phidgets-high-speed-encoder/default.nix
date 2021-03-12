
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, pluginlib, roscpp, roslaunch, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-phidgets-high-speed-encoder";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_high_speed_encoder/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "46053584a6ca253e2a530e85166bb92f81a82587fc080b89a4808da202c4d574";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs pluginlib roscpp roslaunch sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
