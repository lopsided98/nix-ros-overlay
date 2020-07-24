
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3, python3Packages, pythonPackages, rosbash, roslint }:
buildRosPackage {
  pname = "ros-noetic-catkin-virtualenv";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/catkin_virtualenv-release/archive/release/noetic/catkin_virtualenv/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "625ce599f1b78253e9a31fec7b9257bede986d4e713993fe8a331805e3f78a1f";
  };

  buildType = "catkin";
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ python3 python3Packages.nose python3Packages.rospkg python3Packages.virtualenv pythonPackages.virtualenv rosbash ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bundle python requirements in a catkin package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
