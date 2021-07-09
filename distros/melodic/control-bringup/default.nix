
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mavros, mavros-commands, priority-manager }:
buildRosPackage {
  pname = "ros-melodic-control-bringup";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/control_bringup/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "0314942040884ee88c94308a12954db5d43b35d04655b8a95b8df7f287875d85";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ mavros mavros-commands priority-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup of control packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
