
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-prosilica-gige-sdk";
  version = "1.26.3-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/prosilica_gige_sdk-release/archive/release/noetic/prosilica_gige_sdk/1.26.3-2.tar.gz";
    name = "1.26.3-2.tar.gz";
    sha256 = "9f6c2b87f379e186ffb2f156befd99157cad4c3532ff644ec84471fd3cd26bcc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AVT GigE SDK version 1.26 for ROS'';
    license = with lib.licenses; [ "Commercial" ];
  };
}
