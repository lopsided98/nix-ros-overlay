
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbash, rosconsole, boost, libyamlcpp, sensor-msgs, catkin, pkg-config, roscpp-serialization, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-camera-calibration-parsers";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_common-release/archive/release/lunar/camera_calibration_parsers/1.11.13-0.tar.gz;
    sha256 = "137c2e361062bbbe543bd7f20c6a4044298ac04c6bb24c0cb3834e9be5bbf46d";
  };

  buildInputs = [ rosconsole boost libyamlcpp sensor-msgs pkg-config roscpp-serialization roscpp ];
  checkInputs = [ rosunit rosbash ];
  propagatedBuildInputs = [ boost libyamlcpp sensor-msgs roscpp-serialization roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
