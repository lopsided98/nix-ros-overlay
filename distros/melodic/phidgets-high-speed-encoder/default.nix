
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, phidgets-api, phidgets-msgs, pluginlib, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-phidgets-high-speed-encoder";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_high_speed_encoder/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "c80996cd598e2d92710bfc0a78436e790f682495072557be049b80d418054da5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet phidgets-api phidgets-msgs pluginlib roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
