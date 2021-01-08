
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, libyamlcpp, pkg-config, rosbash, rosconsole, roscpp, roscpp-serialization, rosunit, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-camera-calibration-parsers";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/kinetic/camera_calibration_parsers/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "f3b555d2f8d8b7b223ae61f8b14237e1adeeb999a691bc9b4165383a2b1da69f";
  };

  buildType = "catkin";
  buildInputs = [ pkg-config rosconsole ];
  checkInputs = [ rosbash rosunit ];
  propagatedBuildInputs = [ boost libyamlcpp roscpp roscpp-serialization sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
