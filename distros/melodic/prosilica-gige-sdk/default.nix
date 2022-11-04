
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-prosilica-gige-sdk";
  version = "1.26.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/prosilica_gige_sdk-release/archive/release/melodic/prosilica_gige_sdk/1.26.3-1.tar.gz";
    name = "1.26.3-1.tar.gz";
    sha256 = "3ba1f4695e70b0a8d831ec38c0e76b5d018e589d74cbf0436c828ce934e0ab3d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AVT GigE SDK version 1.26 for ROS'';
    license = with lib.licenses; [ "Commercial" ];
  };
}
