
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-sick-lms1xx";
  version = "0.7.17-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_driver-release/archive/release/noetic/cob_sick_lms1xx/0.7.17-2.tar.gz";
    name = "0.7.17-2.tar.gz";
    sha256 = "138b29e4136fc2a2606a61bff979b7d5ddb7f0abaf45aa227693406f539dbb90";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost diagnostic-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package published a laser scan message out of a Sick LMS1xx laser scanner.
	This version is made by fusion of ipa320/RCPRG_laser_drivers and ipa320/libLMS1xx repository. This package shuld have clearer structure and be easier to install.";
    license = with lib.licenses; [ asl20 ];
  };
}
