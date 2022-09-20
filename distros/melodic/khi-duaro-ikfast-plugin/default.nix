
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, liblapack, moveit-core, pluginlib, roscpp, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-khi-duaro-ikfast-plugin";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_duaro_ikfast_plugin/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "3eda3984c7adabaa70f7d83c4d63a58e147049ef64d09d61569e99d143e13d2e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ liblapack moveit-core pluginlib roscpp tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_duaro_ikfast_plugin package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
