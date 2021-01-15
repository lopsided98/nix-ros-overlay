
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audio-common, catkin, joystick-drivers, linux-networking, microstrain-3dmgx2-imu, pr2-apps, pr2-base, pr2-ethercat-drivers, pr2-navigation-apps, pr2-power-drivers, pr2-robot, prosilica-camera, urg-node, wge100-driver, wifi-ddwrt }:
buildRosPackage {
  pname = "ros-kinetic-pr2";
  version = "1.1.3";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_metapackages-release/archive/release/kinetic/pr2/1.1.3-0.tar.gz";
    name = "1.1.3-0.tar.gz";
    sha256 = "beb22b2d381bf9e0652282ba8be34ec444855f218c0ed1883b451a4c6aa79327";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ audio-common joystick-drivers linux-networking microstrain-3dmgx2-imu pr2-apps pr2-base pr2-ethercat-drivers pr2-navigation-apps pr2-power-drivers pr2-robot prosilica-camera urg-node wge100-driver wifi-ddwrt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
