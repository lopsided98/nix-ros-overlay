
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, roscpp-serialization, catkin, rosunit, rosbash, libyamlcpp, roscpp, pkg-config, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-camera-calibration-parsers";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/melodic/camera_calibration_parsers/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "dd350061b03da5dba0315515f603daa31204e71c43389cf9e57bf09c06d8d3ef";
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
