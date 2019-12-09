
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, roscpp-serialization, catkin, rosunit, rosbash, libyamlcpp, roscpp, pkg-config, rosconsole }:
buildRosPackage {
  pname = "ros-kinetic-camera-calibration-parsers";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/kinetic/camera_calibration_parsers/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "f3b555d2f8d8b7b223ae61f8b14237e1adeeb999a691bc9b4165383a2b1da69f";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs roscpp-serialization libyamlcpp roscpp pkg-config rosconsole ];
  checkInputs = [ rosbash rosunit ];
  propagatedBuildInputs = [ sensor-msgs boost roscpp-serialization libyamlcpp roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''camera_calibration_parsers contains routines for reading and writing camera calibration parameters.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
