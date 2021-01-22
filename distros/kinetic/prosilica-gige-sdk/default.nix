
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-prosilica-gige-sdk";
  version = "1.26.3";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/prosilica_gige_sdk-release/archive/release/kinetic/prosilica_gige_sdk/1.26.3-0.tar.gz";
    name = "1.26.3-0.tar.gz";
    sha256 = "4be17103b864f0e9979ae2f0af59fe41bac40e172dcba90139ad5fbb30f75d03";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AVT GigE SDK version 1.26 for ROS'';
    license = with lib.licenses; [ "Commercial" ];
  };
}
