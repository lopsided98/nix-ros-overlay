
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, force-torque-sensor-controller }:
buildRosPackage {
  pname = "ros-kinetic-iiwa-description";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa-rwu/iiwa_stack-release/archive/release/kinetic/iiwa_description/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "681fe3bc34f267d4f1970ffeca37bc881eeee4f2313d42dadbb8737f74670153";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ force-torque-sensor-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the URDF of the KUKA LBR IIWA robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
