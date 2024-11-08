
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depthai, depthai-bridge, depthai-descriptions, depthai-examples, depthai-filters, depthai-ros-driver, depthai-ros-msgs }:
buildRosPackage {
  pname = "ros-noetic-depthai-ros";
  version = "2.10.3-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/noetic/depthai-ros/2.10.3-1.tar.gz";
    name = "2.10.3-1.tar.gz";
    sha256 = "041c7cd29bdbcf72537281898cbeec9b8452116806625bcdf65e282c525fda33";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ depthai depthai-bridge depthai-descriptions depthai-examples depthai-filters depthai-ros-driver depthai-ros-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The depthai-ros package";
    license = with lib.licenses; [ mit ];
  };
}
