
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, microstrain-3dmgx2-imu, joystick-drivers, pr2-power-drivers, catkin, wge100-driver, audio-common, prosilica-camera, pr2-apps, linux-networking, wifi-ddwrt, pr2-robot, pr2-base, pr2-ethercat-drivers, pr2-navigation-apps, urg-node }:
buildRosPackage {
  pname = "ros-kinetic-pr2";
  version = "1.1.3";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_metapackages-release/archive/release/kinetic/pr2/1.1.3-0.tar.gz";
    name = "1.1.3-0.tar.gz";
    sha256 = "beb22b2d381bf9e0652282ba8be34ec444855f218c0ed1883b451a4c6aa79327";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ microstrain-3dmgx2-imu joystick-drivers pr2-power-drivers wge100-driver audio-common prosilica-camera pr2-apps linux-networking wifi-ddwrt pr2-robot pr2-base pr2-ethercat-drivers pr2-navigation-apps urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage to aggregate several packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
