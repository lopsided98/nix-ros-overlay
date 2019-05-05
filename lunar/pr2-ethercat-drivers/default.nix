
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-hardware, fingertip-pressure }:
buildRosPackage {
  pname = "ros-lunar-pr2-ethercat-drivers";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/lunar/pr2_ethercat_drivers/1.8.18-0.tar.gz;
    sha256 = "f55817818e0443f2da05507d5bf0a84c341d68c2e05612d48286815ae82ef125";
  };

  propagatedBuildInputs = [ ethercat-hardware fingertip-pressure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains drivers for the ethercat system and the peripherals
    that connect to it: motor control boards, fingertip sensors, texture
    projector, hand accelerometer.'';
    license = with lib.licenses; [ bsdOriginal gpl1 ];
  };
}
