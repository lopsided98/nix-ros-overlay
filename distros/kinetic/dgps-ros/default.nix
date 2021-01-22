
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dgps-ros";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/qinyunchuan/dgps_ros-release/archive/release/kinetic/dgps_ros/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "3582cd5db2d5b34aac1062c2ad11eeac52baf17b6db18af7deec25a12d32cb26";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dgps_ros package'';
    license = with lib.licenses; [ gpl2 ];
  };
}
